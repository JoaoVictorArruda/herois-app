// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) {
  return _ContactDto.fromJson(json);
}

/// @nodoc
class _$ContactDtoTearOff {
  const _$ContactDtoTearOff();

// ignore: unused_element
  _ContactDto call(
      {@JsonKey(ignore: true) String userId,
      @required String lastMessage,
      String photoUrl,
      String name}) {
    return _ContactDto(
      userId: userId,
      lastMessage: lastMessage,
      photoUrl: photoUrl,
      name: name,
    );
  }

// ignore: unused_element
  ContactDto fromJson(Map<String, Object> json) {
    return ContactDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ContactDto = _$ContactDtoTearOff();

/// @nodoc
mixin _$ContactDto {
  @JsonKey(ignore: true)
  String get userId;
  String get lastMessage;
  String get photoUrl;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ContactDtoCopyWith<ContactDto> get copyWith;
}

/// @nodoc
abstract class $ContactDtoCopyWith<$Res> {
  factory $ContactDtoCopyWith(
          ContactDto value, $Res Function(ContactDto) then) =
      _$ContactDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String userId,
      String lastMessage,
      String photoUrl,
      String name});
}

/// @nodoc
class _$ContactDtoCopyWithImpl<$Res> implements $ContactDtoCopyWith<$Res> {
  _$ContactDtoCopyWithImpl(this._value, this._then);

  final ContactDto _value;
  // ignore: unused_field
  final $Res Function(ContactDto) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object lastMessage = freezed,
    Object photoUrl = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactDtoCopyWith<$Res> implements $ContactDtoCopyWith<$Res> {
  factory _$ContactDtoCopyWith(
          _ContactDto value, $Res Function(_ContactDto) then) =
      __$ContactDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String userId,
      String lastMessage,
      String photoUrl,
      String name});
}

/// @nodoc
class __$ContactDtoCopyWithImpl<$Res> extends _$ContactDtoCopyWithImpl<$Res>
    implements _$ContactDtoCopyWith<$Res> {
  __$ContactDtoCopyWithImpl(
      _ContactDto _value, $Res Function(_ContactDto) _then)
      : super(_value, (v) => _then(v as _ContactDto));

  @override
  _ContactDto get _value => super._value as _ContactDto;

  @override
  $Res call({
    Object userId = freezed,
    Object lastMessage = freezed,
    Object photoUrl = freezed,
    Object name = freezed,
  }) {
    return _then(_ContactDto(
      userId: userId == freezed ? _value.userId : userId as String,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ContactDto extends _ContactDto {
  _$_ContactDto(
      {@JsonKey(ignore: true) this.userId,
      @required this.lastMessage,
      this.photoUrl,
      this.name})
      : assert(lastMessage != null),
        super._();

  factory _$_ContactDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String userId;
  @override
  final String lastMessage;
  @override
  final String photoUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'ContactDto(userId: $userId, lastMessage: $lastMessage, photoUrl: $photoUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ContactDtoCopyWith<_ContactDto> get copyWith =>
      __$ContactDtoCopyWithImpl<_ContactDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactDtoToJson(this);
  }
}

abstract class _ContactDto extends ContactDto {
  _ContactDto._() : super._();
  factory _ContactDto(
      {@JsonKey(ignore: true) String userId,
      @required String lastMessage,
      String photoUrl,
      String name}) = _$_ContactDto;

  factory _ContactDto.fromJson(Map<String, dynamic> json) =
      _$_ContactDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get userId;
  @override
  String get lastMessage;
  @override
  String get photoUrl;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ContactDtoCopyWith<_ContactDto> get copyWith;
}
