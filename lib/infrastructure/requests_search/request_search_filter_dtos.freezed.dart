// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_search_filter_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RequestSearchFilterDto _$RequestSearchFilterDtoFromJson(
    Map<String, dynamic> json) {
  return _RequestSearchFilterDto.fromJson(json);
}

/// @nodoc
class _$RequestSearchFilterDtoTearOff {
  const _$RequestSearchFilterDtoTearOff();

// ignore: unused_element
  _RequestSearchFilterDto call(
      {@required String city,
      @required String bloodType,
      @required String lat,
      @required String long,
      @required String distance}) {
    return _RequestSearchFilterDto(
      city: city,
      bloodType: bloodType,
      lat: lat,
      long: long,
      distance: distance,
    );
  }

// ignore: unused_element
  RequestSearchFilterDto fromJson(Map<String, Object> json) {
    return RequestSearchFilterDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RequestSearchFilterDto = _$RequestSearchFilterDtoTearOff();

/// @nodoc
mixin _$RequestSearchFilterDto {
  String get city;
  String get bloodType;
  String get lat;
  String get long;
  String get distance;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RequestSearchFilterDtoCopyWith<RequestSearchFilterDto> get copyWith;
}

/// @nodoc
abstract class $RequestSearchFilterDtoCopyWith<$Res> {
  factory $RequestSearchFilterDtoCopyWith(RequestSearchFilterDto value,
          $Res Function(RequestSearchFilterDto) then) =
      _$RequestSearchFilterDtoCopyWithImpl<$Res>;
  $Res call(
      {String city,
      String bloodType,
      String lat,
      String long,
      String distance});
}

/// @nodoc
class _$RequestSearchFilterDtoCopyWithImpl<$Res>
    implements $RequestSearchFilterDtoCopyWith<$Res> {
  _$RequestSearchFilterDtoCopyWithImpl(this._value, this._then);

  final RequestSearchFilterDto _value;
  // ignore: unused_field
  final $Res Function(RequestSearchFilterDto) _then;

  @override
  $Res call({
    Object city = freezed,
    Object bloodType = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object distance = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed ? _value.city : city as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      distance: distance == freezed ? _value.distance : distance as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestSearchFilterDtoCopyWith<$Res>
    implements $RequestSearchFilterDtoCopyWith<$Res> {
  factory _$RequestSearchFilterDtoCopyWith(_RequestSearchFilterDto value,
          $Res Function(_RequestSearchFilterDto) then) =
      __$RequestSearchFilterDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String city,
      String bloodType,
      String lat,
      String long,
      String distance});
}

/// @nodoc
class __$RequestSearchFilterDtoCopyWithImpl<$Res>
    extends _$RequestSearchFilterDtoCopyWithImpl<$Res>
    implements _$RequestSearchFilterDtoCopyWith<$Res> {
  __$RequestSearchFilterDtoCopyWithImpl(_RequestSearchFilterDto _value,
      $Res Function(_RequestSearchFilterDto) _then)
      : super(_value, (v) => _then(v as _RequestSearchFilterDto));

  @override
  _RequestSearchFilterDto get _value => super._value as _RequestSearchFilterDto;

  @override
  $Res call({
    Object city = freezed,
    Object bloodType = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object distance = freezed,
  }) {
    return _then(_RequestSearchFilterDto(
      city: city == freezed ? _value.city : city as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      distance: distance == freezed ? _value.distance : distance as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RequestSearchFilterDto extends _RequestSearchFilterDto {
  _$_RequestSearchFilterDto(
      {@required this.city,
      @required this.bloodType,
      @required this.lat,
      @required this.long,
      @required this.distance})
      : assert(city != null),
        assert(bloodType != null),
        assert(lat != null),
        assert(long != null),
        assert(distance != null),
        super._();

  factory _$_RequestSearchFilterDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestSearchFilterDtoFromJson(json);

  @override
  final String city;
  @override
  final String bloodType;
  @override
  final String lat;
  @override
  final String long;
  @override
  final String distance;

  @override
  String toString() {
    return 'RequestSearchFilterDto(city: $city, bloodType: $bloodType, lat: $lat, long: $long, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSearchFilterDto &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  _$RequestSearchFilterDtoCopyWith<_RequestSearchFilterDto> get copyWith =>
      __$RequestSearchFilterDtoCopyWithImpl<_RequestSearchFilterDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestSearchFilterDtoToJson(this);
  }
}

abstract class _RequestSearchFilterDto extends RequestSearchFilterDto {
  _RequestSearchFilterDto._() : super._();
  factory _RequestSearchFilterDto(
      {@required String city,
      @required String bloodType,
      @required String lat,
      @required String long,
      @required String distance}) = _$_RequestSearchFilterDto;

  factory _RequestSearchFilterDto.fromJson(Map<String, dynamic> json) =
      _$_RequestSearchFilterDto.fromJson;

  @override
  String get city;
  @override
  String get bloodType;
  @override
  String get lat;
  @override
  String get long;
  @override
  String get distance;
  @override
  @JsonKey(ignore: true)
  _$RequestSearchFilterDtoCopyWith<_RequestSearchFilterDto> get copyWith;
}
