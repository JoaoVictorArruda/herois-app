// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestSearchFilterTearOff {
  const _$RequestSearchFilterTearOff();

// ignore: unused_element
  _RequestSearchFilter call(
      {StringSingleLine city,
      @required StringSingleLine distance,
      @required StringSingleLine lat,
      @required StringSingleLine long,
      @required StringSingleLine bloodType}) {
    return _RequestSearchFilter(
      city: city,
      distance: distance,
      lat: lat,
      long: long,
      bloodType: bloodType,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestSearchFilter = _$RequestSearchFilterTearOff();

/// @nodoc
mixin _$RequestSearchFilter {
  StringSingleLine get city;
  StringSingleLine get distance;
  StringSingleLine get lat;
  StringSingleLine get long;
  StringSingleLine get bloodType;

  @JsonKey(ignore: true)
  $RequestSearchFilterCopyWith<RequestSearchFilter> get copyWith;
}

/// @nodoc
abstract class $RequestSearchFilterCopyWith<$Res> {
  factory $RequestSearchFilterCopyWith(
          RequestSearchFilter value, $Res Function(RequestSearchFilter) then) =
      _$RequestSearchFilterCopyWithImpl<$Res>;
  $Res call(
      {StringSingleLine city,
      StringSingleLine distance,
      StringSingleLine lat,
      StringSingleLine long,
      StringSingleLine bloodType});
}

/// @nodoc
class _$RequestSearchFilterCopyWithImpl<$Res>
    implements $RequestSearchFilterCopyWith<$Res> {
  _$RequestSearchFilterCopyWithImpl(this._value, this._then);

  final RequestSearchFilter _value;
  // ignore: unused_field
  final $Res Function(RequestSearchFilter) _then;

  @override
  $Res call({
    Object city = freezed,
    Object distance = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed ? _value.city : city as StringSingleLine,
      distance:
          distance == freezed ? _value.distance : distance as StringSingleLine,
      lat: lat == freezed ? _value.lat : lat as StringSingleLine,
      long: long == freezed ? _value.long : long as StringSingleLine,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType as StringSingleLine,
    ));
  }
}

/// @nodoc
abstract class _$RequestSearchFilterCopyWith<$Res>
    implements $RequestSearchFilterCopyWith<$Res> {
  factory _$RequestSearchFilterCopyWith(_RequestSearchFilter value,
          $Res Function(_RequestSearchFilter) then) =
      __$RequestSearchFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {StringSingleLine city,
      StringSingleLine distance,
      StringSingleLine lat,
      StringSingleLine long,
      StringSingleLine bloodType});
}

/// @nodoc
class __$RequestSearchFilterCopyWithImpl<$Res>
    extends _$RequestSearchFilterCopyWithImpl<$Res>
    implements _$RequestSearchFilterCopyWith<$Res> {
  __$RequestSearchFilterCopyWithImpl(
      _RequestSearchFilter _value, $Res Function(_RequestSearchFilter) _then)
      : super(_value, (v) => _then(v as _RequestSearchFilter));

  @override
  _RequestSearchFilter get _value => super._value as _RequestSearchFilter;

  @override
  $Res call({
    Object city = freezed,
    Object distance = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
  }) {
    return _then(_RequestSearchFilter(
      city: city == freezed ? _value.city : city as StringSingleLine,
      distance:
          distance == freezed ? _value.distance : distance as StringSingleLine,
      lat: lat == freezed ? _value.lat : lat as StringSingleLine,
      long: long == freezed ? _value.long : long as StringSingleLine,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType as StringSingleLine,
    ));
  }
}

/// @nodoc
class _$_RequestSearchFilter extends _RequestSearchFilter {
  const _$_RequestSearchFilter(
      {this.city,
      @required this.distance,
      @required this.lat,
      @required this.long,
      @required this.bloodType})
      : assert(distance != null),
        assert(lat != null),
        assert(long != null),
        assert(bloodType != null),
        super._();

  @override
  final StringSingleLine city;
  @override
  final StringSingleLine distance;
  @override
  final StringSingleLine lat;
  @override
  final StringSingleLine long;
  @override
  final StringSingleLine bloodType;

  @override
  String toString() {
    return 'RequestSearchFilter(city: $city, distance: $distance, lat: $lat, long: $long, bloodType: $bloodType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSearchFilter &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(bloodType);

  @JsonKey(ignore: true)
  @override
  _$RequestSearchFilterCopyWith<_RequestSearchFilter> get copyWith =>
      __$RequestSearchFilterCopyWithImpl<_RequestSearchFilter>(
          this, _$identity);
}

abstract class _RequestSearchFilter extends RequestSearchFilter {
  const _RequestSearchFilter._() : super._();
  const factory _RequestSearchFilter(
      {StringSingleLine city,
      @required StringSingleLine distance,
      @required StringSingleLine lat,
      @required StringSingleLine long,
      @required StringSingleLine bloodType}) = _$_RequestSearchFilter;

  @override
  StringSingleLine get city;
  @override
  StringSingleLine get distance;
  @override
  StringSingleLine get lat;
  @override
  StringSingleLine get long;
  @override
  StringSingleLine get bloodType;
  @override
  @JsonKey(ignore: true)
  _$RequestSearchFilterCopyWith<_RequestSearchFilter> get copyWith;
}
