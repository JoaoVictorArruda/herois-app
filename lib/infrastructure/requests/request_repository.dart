import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:herois/domain/info/i_info_repository.dart';
import 'package:herois/infrastructure/core/notifications.dart';
import 'package:herois/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:herois/domain/requests/i_request_repository.dart';
import 'package:herois/domain/requests/request.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:herois/domain/requests_search/request_search.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';
import 'package:herois/infrastructure/core/firestore_helpers.dart';
import 'package:herois/infrastructure/requests/request_dtos.dart';
import 'package:herois/infrastructure/requests_search/request_search_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IRequestRepository)
class RequestRepository implements IRequestRepository {
  final FirebaseFirestore _firestore;
  final Geoflutterfire _geoflutterfire;

  RequestRepository(this._firestore, this._geoflutterfire);

  @override
  Stream<Either<RequestFailure, KtList<Request>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.requestCollection
        .snapshots()
        .map(
          (snapshot) => right<RequestFailure, KtList<Request>>(
        snapshot.docs
            .map((doc) => RequestDto.fromFirestore(doc).toDomain())
            .toImmutableList(),
      ),
    )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RequestFailure.insufficientPermission());
      } else {
        return left(const RequestFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<RequestFailure, KtList<Request>>> watchOtherUserAll(String userId) async* {
    final userDoc = await _firestore.otherUserDocument(userId);
    yield* userDoc.requestCollection
        .snapshots()
        .map(
          (snapshot) => right<RequestFailure, KtList<Request>>(
        snapshot.docs
            .map((doc) => RequestDto.fromFirestore(doc).toDomain())
            .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RequestFailure.insufficientPermission());
      } else {
        return left(const RequestFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<RequestFailure, KtList<RequestSearch>>> watchNearby(RequestSearchFilter requestSearchFilter) async* {
    final locationDoc = await _firestore.locationCollection();
    final double radius = double.parse(requestSearchFilter.distance.getOrCrash()) * 2;
    final GeoFirePoint center = _geoflutterfire.point(latitude: double.parse(requestSearchFilter.lat.getOrCrash()), longitude: double.parse(requestSearchFilter.long.getOrCrash()));
    yield* _geoflutterfire
        .collection(collectionRef: locationDoc)
        .within(center: center, radius: radius, field: 'position', strictMode: true)
        .map(
            (snapshot) => right<RequestFailure, KtList<RequestSearch>>(
          snapshot.map((doc) => RequestSearchDto.fromFirestore(doc).toDomain())
              .toImmutableList(),
          )
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RequestFailure.insufficientPermission());
      } else {
        return left(const RequestFailure.unexpected());
      }
    }
    );
  }

  @override
  Future<Either<RequestFailure, Unit>> create(Request request) async {
    try {
      final userDoc = await _firestore.userDocument();
      final requestDto = RequestDto.fromDomain(request);

      final Map<String, dynamic> json = requestDto.toJson();
      json.addAll({'position': _geoflutterfire.point(latitude: double.parse(request.lat.getOrCrash()), longitude: double.parse(request.long.getOrCrash())).data});
      await userDoc.requestCollection
          .doc(requestDto.id)
          .set(json);

      final locationDoc = await _firestore.locationCollection();
      json.addAll({'user': userDoc.id});
      locationDoc.doc(requestDto.id).set(json);

      getIt<IInfoRepository>().addRequestCounter(1);
      getIt<Notifications>().sendNotificationToNearbyUsersWithCompatibleBloodRequest(request, "Precisamos de você", "Uma pessoa precisa do seu tipo sanguineo");

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const RequestFailure.insufficientPermission());
      } else {
        return left(const RequestFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RequestFailure, Unit>> update(Request request) async {
    try {
      final userDoc = await _firestore.userDocument();
      final requestDto = RequestDto.fromDomain(request);
      final Map<String, dynamic> json = requestDto.toJson();
      json.addAll({'position': _geoflutterfire.point(latitude: double.parse(request.lat.getOrCrash()), longitude: double.parse(request.long.getOrCrash())).data, 'user': userDoc.id});
      await userDoc.requestCollection
          .doc(requestDto.id)
          .update(json);

      final locationDoc = await _firestore.locationCollection();
      locationDoc.doc(requestDto.id).update(json);
      getIt<Notifications>().sendNotificationToNearbyUsersWithCompatibleBloodRequest(request, "Precisamos de você", "Uma pessoa precisa do seu tipo sanguineo");
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const RequestFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const RequestFailure.unableToUpdate());
      } else {
        return left(const RequestFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RequestFailure, Unit>> delete(Request request) async {
    try {
      final userDoc = await _firestore.userDocument();
      final requestId = request.id.getOrCrash();

      await userDoc.requestCollection.doc(requestId).delete();

      final locationDoc = await _firestore.locationCollection();
      locationDoc.doc(requestId).delete();
      getIt<IInfoRepository>().addRequestCounter(-1);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const RequestFailure.insufficientPermission());
      } else {
        return left(const RequestFailure.unexpected());
      }
    }
  }
}
