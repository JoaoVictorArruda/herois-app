import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_failure.freezed.dart';

@freezed
abstract class ContactFailure with _$ContactFailure {
  const factory ContactFailure.unexpected() = _Unexpected;

  const factory ContactFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory ContactFailure.unableToUpdate() = _UnableToUpdate;
}
