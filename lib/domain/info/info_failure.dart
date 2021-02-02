import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_failure.freezed.dart';

@freezed
abstract class InfoFailure with _$InfoFailure {
  const factory InfoFailure.unexpected() = Unexpected;

  const factory InfoFailure.insufficientPermissions() = InsufficientPermissions;

  const factory InfoFailure.unableToUpdate() = UnableToUpdate;

  const factory InfoFailure.unavailableToDonate() = UnavailableToDonate;
}
