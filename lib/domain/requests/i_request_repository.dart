import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:herois/domain/requests/request.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:herois/domain/requests_search/request_search.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';

abstract class IRequestRepository {
  Stream<Either<RequestFailure, KtList<Request>>> watchAll();

  Stream<Either<RequestFailure, KtList<Request>>> watchOtherUserAll(String userId);

  Stream<Either<RequestFailure, KtList<RequestSearch>>> watchNearby(RequestSearchFilter requestSearchFilter);

  // Stream<Either<RequestFailure, KtList<RequestSearch>>> watchNearbyFiltered(RequestSearchFilter requestSearchFilter);

  Future<Either<RequestFailure, Unit>> create(Request request);

  Future<Either<RequestFailure, Unit>> update(Request request);

  Future<Either<RequestFailure, Unit>> delete(Request request);
}
