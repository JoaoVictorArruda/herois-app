// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RequestDto _$RequestDtoFromJson(Map<String, dynamic> json) {
  return _RequestDto.fromJson(json);
}

/// @nodoc
class _$RequestDtoTearOff {
  const _$RequestDtoTearOff();

// ignore: unused_element
  _RequestDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String city,
      @required String lat,
      @required String long,
      @required String bloodType,
      @required String photoUrl,
      bool isOpen}) {
    return _RequestDto(
      id: id,
      name: name,
      city: city,
      lat: lat,
      long: long,
      bloodType: bloodType,
      photoUrl: photoUrl,
      isOpen: isOpen,
    );
  }

// ignore: unused_element
  RequestDto fromJson(Map<String, Object> json) {
    return RequestDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RequestDto = _$RequestDtoTearOff();

/// @nodoc
mixin _$RequestDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get city;
  String get lat;
  String get long;
  String get bloodType;
  String get photoUrl;
  bool get isOpen;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RequestDtoCopyWith<RequestDto> get copyWith;
}

/// @nodoc
abstract class $RequestDtoCopyWith<$Res> {
  factory $RequestDtoCopyWith(
          RequestDto value, $Res Function(RequestDto) then) =
      _$RequestDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String city,
      String lat,
      String long,
      String bloodType,
      String photoUrl,
      bool isOpen});
}

/// @nodoc
class _$RequestDtoCopyWithImpl<$Res> implements $RequestDtoCopyWith<$Res> {
  _$RequestDtoCopyWithImpl(this._value, this._then);

  final RequestDto _value;
  // ignore: unused_field
  final $Res Function(RequestDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object isOpen = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      city: city == freezed ? _value.city : city as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

/// @nodoc
abstract class _$RequestDtoCopyWith<$Res> implements $RequestDtoCopyWith<$Res> {
  factory _$RequestDtoCopyWith(
          _RequestDto value, $Res Function(_RequestDto) then) =
      __$RequestDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String city,
      String lat,
      String long,
      String bloodType,
      String photoUrl,
      bool isOpen});
}

/// @nodoc
class __$RequestDtoCopyWithImpl<$Res> extends _$RequestDtoCopyWithImpl<$Res>
    implements _$RequestDtoCopyWith<$Res> {
  __$RequestDtoCopyWithImpl(
      _RequestDto _value, $Res Function(_RequestDto) _then)
      : super(_value, (v) => _then(v as _RequestDto));

  @override
  _RequestDto get _value => super._value as _RequestDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object isOpen = freezed,
  }) {
    return _then(_RequestDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      city: city == freezed ? _value.city : city as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RequestDto extends _RequestDto {
  _$_RequestDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.city,
      @required this.lat,
      @required this.long,
      @required this.bloodType,
      @required this.photoUrl,
      this.isOpen})
      : assert(name != null),
        assert(city != null),
        assert(lat != null),
        assert(long != null),
        assert(bloodType != null),
        assert(photoUrl != null),
        super._();

  factory _$_RequestDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String city;
  @override
  final String lat;
  @override
  final String long;
  @override
  final String bloodType;
  @override
  final String photoUrl;
  @override
  final bool isOpen;

  @override
  String toString() {
    return 'RequestDto(id: $id, name: $name, city: $city, lat: $lat, long: $long, bloodType: $bloodType, photoUrl: $photoUrl, isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(isOpen);

  @JsonKey(ignore: true)
  @override
  _$RequestDtoCopyWith<_RequestDto> get copyWith =>
      __$RequestDtoCopyWithImpl<_RequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestDtoToJson(this);
  }
}

abstract class _RequestDto extends RequestDto {
  _RequestDto._() : super._();
  factory _RequestDto(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String city,
      @required String lat,
      @required String long,
      @required String bloodType,
      @required String photoUrl,
      bool isOpen}) = _$_RequestDto;

  factory _RequestDto.fromJson(Map<String, dynamic> json) =
      _$_RequestDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get city;
  @override
  String get lat;
  @override
  String get long;
  @override
  String get bloodType;
  @override
  String get photoUrl;
  @override
  bool get isOpen;
  @override
  @JsonKey(ignore: true)
  _$RequestDtoCopyWith<_RequestDto> get copyWith;
}
