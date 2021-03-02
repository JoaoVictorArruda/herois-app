import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
abstract class RequestFailure with _$RequestFailure {
  const factory RequestFailure.unexpected() = _Unexpected;

  const factory RequestFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory RequestFailure.unableToUpdate() = _UnableToUpdate;
}
