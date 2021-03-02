import 'package:dartz/dartz.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/info/info_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IInfoRepository {
  Stream<Either<InfoFailure, Info>> watchAll();

  Stream<Either<InfoFailure, Info>> watchOtherUser(String userId);

  Stream<Either<InfoFailure, KtList<Info>>> watchSearchInfoUserStarted();

  Stream<Either<InfoFailure, KtList<Info>>> watchSearchInfoUserFiltered(
      String query);

  Future<Either<InfoFailure, Unit>> create(Info info);

  Future<Either<InfoFailure, Unit>> update(Info info);

  Future<Either<InfoFailure, Unit>> delete(Info info);

  Future<Either<InfoFailure, Unit>> addRequestCounter(int value);
}
