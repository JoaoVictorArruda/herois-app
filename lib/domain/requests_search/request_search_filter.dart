import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/info.dart';

part 'request_search_filter.freezed.dart';


@freezed
abstract class RequestSearchFilter implements _$RequestSearchFilter {
  const RequestSearchFilter._();

  const factory RequestSearchFilter({
    StringSingleLine city,
    @required StringSingleLine distance,
    @required StringSingleLine lat,
    @required StringSingleLine long,
    @required StringSingleLine bloodType,
  }) = _RequestSearchFilter;

  factory RequestSearchFilter.empty() => RequestSearchFilter(
      city: StringSingleLine(''),
      distance: StringSingleLine('50'),
      lat: StringSingleLine(''),
      long: StringSingleLine(''),
      bloodType: StringSingleLine('A+'),
  );

  factory RequestSearchFilter.fromInfo(Info info) => RequestSearchFilter(
    city: info.city,
    distance: StringSingleLine('50'),
    lat: info.lat,
    long: info.long,
    bloodType: StringSingleLine('|${info.bloodType.getOrCrash()}|')
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return city.failureOrUnit
        .andThen(lat.failureOrUnit)
        .andThen(long.failureOrUnit)
        .andThen(distance.failureOrUnit)
        .andThen(bloodType.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}