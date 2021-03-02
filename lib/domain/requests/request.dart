import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/value_objects.dart';

part 'request.freezed.dart';

@freezed
abstract class Request implements _$Request {
  const Request._();

  const factory Request({
    @required UniqueId id,
    StringSingleLine city,
    @required StringSingleLine name,
    @required StringSingleLine lat,
    @required StringSingleLine long,
    @required BloodType bloodType,
    String photoUrl,
    @required bool isOpen,
  }) = _Request;

  factory Request.empty() => Request(
      id: UniqueId(),
      name: StringSingleLine(''),
      city: StringSingleLine(''),
      lat: StringSingleLine(''),
      long: StringSingleLine(''),
      isOpen: true,
      bloodType: BloodType(BloodType.predefinedBloodTypes[0]),
      photoUrl: '');

  Option<ValueFailure<dynamic>> get failureOption {
    return lat.failureOrUnit
        .andThen(long.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
