import 'package:dartz/dartz.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';

abstract class IRequestSearchFilterRepository {
  Future<Either<RequestFailure, Unit>> create(
      RequestSearchFilter requestSearchFilter);

  Future<Either<RequestFailure, Unit>> update(
      RequestSearchFilter requestSearchFilter);

  Future<Either<RequestFailure, Unit>> delete(
      RequestSearchFilter requestSearchFilter);

  Future<RequestSearchFilter> get();
}
