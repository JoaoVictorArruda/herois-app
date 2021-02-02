import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:herois/domain/info/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/collection.dart';
import 'package:herois/domain/info/i_info_repository.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/info/info_failure.dart';
import 'package:herois/domain/requests_search/i_request_search_filter_repository.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';
import 'package:herois/infrastructure/info/info_dtos.dart';
import 'package:herois/infrastructure/core/firestore_helpers.dart';
import 'package:herois/injection.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IInfoRepository)
class InfoRepository implements IInfoRepository {
  final FirebaseFirestore _firestore;
  final Geoflutterfire _geoflutterfire;

  InfoRepository(this._firestore, this._geoflutterfire);

  @override
  Stream<Either<InfoFailure, Info>> watchAll() async* {
    final userInfoDoc = await _firestore.userDocument();
    yield* userInfoDoc
        .snapshots()
        .map(
          (snapshot) {
            if(snapshot.exists) {
              return right<InfoFailure, Info>(InfoDto.fromFirestore(snapshot).toDomain());
            }
            return right<InfoFailure, Info>(Info.empty());
          },
         )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermissions());
      } else {
        return left(const InfoFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<InfoFailure, Info>> watchOtherUser(String userId) async* {
    final userDoc = await _firestore.otherUserDocument(userId);
    yield* userDoc
        .snapshots()
        .map(
          (snapshot) {
        if(snapshot.exists) {
          return right<InfoFailure, Info>(InfoDto.fromFirestore(snapshot).toDomain());
        }
        return right<InfoFailure, Info>(Info.empty());
      },
      )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermissions());
      } else {
        return left(const InfoFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<InfoFailure, KtList<Info>>> watchSearchInfoUserStarted() async* {
    const double radius = 50;
    Position position = await Geolocator.getCurrentPosition();
    if(position == null) {
      final infoDocReference = await _firestore.userDocument();
      final info = InfoDto.fromFirestore(await infoDocReference.get()).toDomain();
      position = Position(longitude: double.parse(info.long.getOrCrash()), latitude: double.parse(info.lat.getOrCrash()));
    }
    final GeoFirePoint center = _geoflutterfire.point(latitude: position.latitude, longitude: position.longitude);
    final userDoc = await _firestore.usersCollection();
    yield* _geoflutterfire
        .collection(collectionRef: userDoc)
        .within(center: center, radius: radius, field: 'position', strictMode: true)
        .map(
            (snapshot) => right<InfoFailure, KtList<Info>>(
          snapshot.map((doc) => InfoDto.fromFirestore(doc).toDomain())
              .toImmutableList(),
          )
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermissions());
      } else {
        return left(const InfoFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<InfoFailure, KtList<Info>>> watchSearchInfoUserFiltered(String query) async* {
    final usersCollection = await _firestore.usersCollection();
    yield* usersCollection
        .where(
            'name',
            isGreaterThanOrEqualTo: query,
            isLessThan: query.substring(0, query.length-1) + String.fromCharCode(query.codeUnitAt(query.length - 1) + 1),
          )
        .snapshots()
        .map(
          (snapshot) => right<InfoFailure, KtList<Info>>(
        snapshot.docs
            .map((doc) => InfoDto.fromFirestore(doc).toDomain())
            .toImmutableList(),
      ),
    )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermissions());
      } else {
        return left(const InfoFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<InfoFailure, Unit>> create(Info info) async {
    try {
      if(!info.neverDonated && info.isVisible == null ? false: true) {
        final dateLastDonate = DateTime.parse(info.dateLastDonate.getOrCrash());
        final difference = dateLastDonate.difference(DateTime.now());
        final days = info.gender.getOrCrash() == Gender.predefinedGender[0]? 90 : 60;
        if((difference.inDays * -1) < days) {
          return left(InfoFailure.unavailableToDonate());
        }
      }
      final userDoc = await _firestore.userDocument();
      final infoDto = InfoDto.fromDomain(info);
      final Map<String, dynamic> json = infoDto.toJson();
      json.addAll({'position': _geoflutterfire.point(latitude: double.parse(info.lat.getOrCrash()), longitude: double.parse(info.long.getOrCrash())).data});
      await userDoc.set(json);

      getIt<IRequestSearchFilterRepository>().create(RequestSearchFilter.fromInfo(info));

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermissions());
      } else {
        return left(const InfoFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<InfoFailure, Unit>> update(Info info) async {
    try {
      if(!info.neverDonated) {
        final dateLastDonate = DateTime.parse(info.dateLastDonate.getOrCrash());
        final difference = dateLastDonate.difference(DateTime.now());
        final days = info.gender.getOrCrash() == Gender.predefinedGender[0]? 90 : 60;
        if((difference.inDays * -1) < days) {
          return left(InfoFailure.unavailableToDonate());
        }
      }
      final userDoc = await _firestore.userDocument();
      final infoDto = InfoDto.fromDomain(info);

      final Map<String, dynamic> json = infoDto.toJson();
      json.addAll({'position': _geoflutterfire.point(latitude: double.parse(info.lat.getOrCrash()), longitude: double.parse(info.long.getOrCrash())).data, 'user': userDoc.id});

      await userDoc.update(json);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const InfoFailure.unableToUpdate());
      } else {
        return left(const InfoFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<InfoFailure, Unit>> delete(Info info) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermissions());
      } else {
        return left(const InfoFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<InfoFailure, Unit>> addRequestCounter(int value) async {
    try {
      final userDoc = await _firestore.userDocument();
      Info info = await _firestore.getInfo();
      final infoDto = InfoDto.fromDomain(info);

      final Map<String, dynamic> json = infoDto.toJson();
      json.addAll({'totalRequests': infoDto.totalRequests + value,'position': _geoflutterfire.point(latitude: double.parse(info.lat.getOrCrash()), longitude: double.parse(info.long.getOrCrash())).data, 'user': userDoc.id});

      await userDoc.update(json);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const InfoFailure.unableToUpdate());
      } else {
        return left(const InfoFailure.unexpected());
      }
    }
  }
}
