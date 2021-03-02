import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/value_objects.dart';

part 'request_search.freezed.dart';

@freezed
abstract class RequestSearch implements _$RequestSearch {
  const RequestSearch._();

  const factory RequestSearch({
    @required UniqueId id,
    @required StringSingleLine name,
    StringSingleLine city,
    @required StringSingleLine lat,
    @required StringSingleLine long,
    @required BloodType bloodType,
    String photoUrl,
    @required bool isOpen,
    @required StringSingleLine user,
  }) = _RequestSearch;

  factory RequestSearch.empty() => RequestSearch(
        id: UniqueId(),
        name: StringSingleLine(''),
        city: StringSingleLine(''),
        lat: StringSingleLine(''),
        long: StringSingleLine(''),
        user: StringSingleLine(''),
        isOpen: false,
        bloodType: BloodType(BloodType.predefinedBloodTypes[0]),
        photoUrl: '',
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return lat.failureOrUnit
        .andThen(long.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
