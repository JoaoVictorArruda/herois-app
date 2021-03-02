import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_failure.freezed.dart';

@freezed
abstract class MessageFailure with _$MessageFailure {
  const factory MessageFailure.unexpected() = _Unexpected;

  const factory MessageFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory MessageFailure.unableToUpdate() = _UnableToUpdate;
}
