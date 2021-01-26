import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:herois/domain/requests_search/i_request_search_filter_repository.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';
import 'package:herois/infrastructure/core/firestore_helpers.dart';
import 'package:herois/infrastructure/requests_search/request_search_filter_dtos.dart';

@LazySingleton(as: IRequestSearchFilterRepository)
class RequestSearchFilterRepository implements IRequestSearchFilterRepository {
  final FirebaseFirestore _firestore;

  RequestSearchFilterRepository(this._firestore);

  @override
  Future<Either<RequestFailure, Unit>> create(RequestSearchFilter requestSearchFilter) async {
    try {
      final userDoc = await _firestore.userDocument();
      final requestSearchFilterDto = RequestSearchFilterDto.fromDomain(requestSearchFilter);
      await userDoc.requestSearchFilterCollection
          .doc('data')
          .set(requestSearchFilterDto.toJson());

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
  Future<Either<RequestFailure, Unit>> update(RequestSearchFilter requestSearchFilter) async {
    try {
      final userDoc = await _firestore.userDocument();
      final requestSearchFilterDto = RequestSearchFilterDto.fromDomain(requestSearchFilter);

      await userDoc.requestSearchFilterCollection
          .doc('data')
          .update(requestSearchFilterDto.toJson());

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
  Future<Either<RequestFailure, Unit>> delete(RequestSearchFilter requestSearchFilter) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.requestSearchFilterCollection.doc('data').delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const RequestFailure.insufficientPermission());
      } else {
        return left(const RequestFailure.unexpected());
      }
    }
  }

  @override
  Future<RequestSearchFilter> get() async {
      final userDoc = await _firestore.userDocument();

      final snapshots = await userDoc.requestSearchFilterCollection.doc('data').get();

      return RequestSearchFilterDto.fromFirestore(snapshots).toDomain();
  }
}
