// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InfoTearOff {
  const _$InfoTearOff();

// ignore: unused_element
  _Info call(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required String photoUrl,
      @required InfoBio bio,
      @required BloodType bloodType,
      @required Gender gender,
      StringSingleLine city,
      @required StringSingleLine lat,
      @required StringSingleLine long,
      bool isVisible}) {
    return _Info(
      id: id,
      name: name,
      photoUrl: photoUrl,
      bio: bio,
      bloodType: bloodType,
      gender: gender,
      city: city,
      lat: lat,
      long: long,
      isVisible: isVisible,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Info = _$InfoTearOff();

/// @nodoc
mixin _$Info {
  UniqueId get id;
  StringSingleLine get name;
  String get photoUrl;
  InfoBio get bio;
  BloodType get bloodType;
  Gender get gender;
  StringSingleLine get city;
  StringSingleLine get lat;
  StringSingleLine get long;
  bool get isVisible;

  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      String photoUrl,
      InfoBio bio,
      BloodType bloodType,
      Gender gender,
      StringSingleLine city,
      StringSingleLine lat,
      StringSingleLine long,
      bool isVisible});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res> implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  final Info _value;
  // ignore: unused_field
  final $Res Function(Info) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
    Object bio = freezed,
    Object bloodType = freezed,
    Object gender = freezed,
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object isVisible = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      bio: bio == freezed ? _value.bio : bio as InfoBio,
      bloodType:
          bloodType == freezed ? _value.bloodType : bloodType as BloodType,
      gender: gender == freezed ? _value.gender : gender as Gender,
      city: city == freezed ? _value.city : city as StringSingleLine,
      lat: lat == freezed ? _value.lat : lat as StringSingleLine,
      long: long == freezed ? _value.long : long as StringSingleLine,
      isVisible: isVisible == freezed ? _value.isVisible : isVisible as bool,
    ));
  }
}

/// @nodoc
abstract class _$InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$InfoCopyWith(_Info value, $Res Function(_Info) then) =
      __$InfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      String photoUrl,
      InfoBio bio,
      BloodType bloodType,
      Gender gender,
      StringSingleLine city,
      StringSingleLine lat,
      StringSingleLine long,
      bool isVisible});
}

/// @nodoc
class __$InfoCopyWithImpl<$Res> extends _$InfoCopyWithImpl<$Res>
    implements _$InfoCopyWith<$Res> {
  __$InfoCopyWithImpl(_Info _value, $Res Function(_Info) _then)
      : super(_value, (v) => _then(v as _Info));

  @override
  _Info get _value => super._value as _Info;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
    Object bio = freezed,
    Object bloodType = freezed,
    Object gender = freezed,
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object isVisible = freezed,
  }) {
    return _then(_Info(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      bio: bio == freezed ? _value.bio : bio as InfoBio,
      bloodType:
          bloodType == freezed ? _value.bloodType : bloodType as BloodType,
      gender: gender == freezed ? _value.gender : gender as Gender,
      city: city == freezed ? _value.city : city as StringSingleLine,
      lat: lat == freezed ? _value.lat : lat as StringSingleLine,
      long: long == freezed ? _value.long : long as StringSingleLine,
      isVisible: isVisible == freezed ? _value.isVisible : isVisible as bool,
    ));
  }
}

/// @nodoc
class _$_Info extends _Info with DiagnosticableTreeMixin {
  const _$_Info(
      {@required this.id,
      @required this.name,
      @required this.photoUrl,
      @required this.bio,
      @required this.bloodType,
      @required this.gender,
      this.city,
      @required this.lat,
      @required this.long,
      this.isVisible})
      : assert(id != null),
        assert(name != null),
        assert(photoUrl != null),
        assert(bio != null),
        assert(bloodType != null),
        assert(gender != null),
        assert(lat != null),
        assert(long != null),
        super._();

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final String photoUrl;
  @override
  final InfoBio bio;
  @override
  final BloodType bloodType;
  @override
  final Gender gender;
  @override
  final StringSingleLine city;
  @override
  final StringSingleLine lat;
  @override
  final StringSingleLine long;
  @override
  final bool isVisible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Info(id: $id, name: $name, photoUrl: $photoUrl, bio: $bio, bloodType: $bloodType, gender: $gender, city: $city, lat: $lat, long: $long, isVisible: $isVisible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Info'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('bloodType', bloodType))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long))
      ..add(DiagnosticsProperty('isVisible', isVisible));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Info &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.isVisible, isVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isVisible, isVisible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(isVisible);

  @JsonKey(ignore: true)
  @override
  _$InfoCopyWith<_Info> get copyWith =>
      __$InfoCopyWithImpl<_Info>(this, _$identity);
}

abstract class _Info extends Info {
  const _Info._() : super._();
  const factory _Info(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required String photoUrl,
      @required InfoBio bio,
      @required BloodType bloodType,
      @required Gender gender,
      StringSingleLine city,
      @required StringSingleLine lat,
      @required StringSingleLine long,
      bool isVisible}) = _$_Info;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  String get photoUrl;
  @override
  InfoBio get bio;
  @override
  BloodType get bloodType;
  @override
  Gender get gender;
  @override
  StringSingleLine get city;
  @override
  StringSingleLine get lat;
  @override
  StringSingleLine get long;
  @override
  bool get isVisible;
  @override
  @JsonKey(ignore: true)
  _$InfoCopyWith<_Info> get copyWith;
}
