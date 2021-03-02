// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactTearOff {
  const _$ContactTearOff();

// ignore: unused_element
  _Contact call(
      {@required StringSingleLine userId,
      @required StringSingleLine lastMessage,
      String photoUrl,
      String name}) {
    return _Contact(
      userId: userId,
      lastMessage: lastMessage,
      photoUrl: photoUrl,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Contact = _$ContactTearOff();

/// @nodoc
mixin _$Contact {
  StringSingleLine get userId;

  StringSingleLine get lastMessage;

  String get photoUrl;

  String get name;

  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;

  $Res call(
      {StringSingleLine userId,
      StringSingleLine lastMessage,
      String photoUrl,
      String name});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  final Contact _value;

  // ignore: unused_field
  final $Res Function(Contact) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object lastMessage = freezed,
    Object photoUrl = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as StringSingleLine,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage as StringSingleLine,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) then) =
      __$ContactCopyWithImpl<$Res>;

  @override
  $Res call(
      {StringSingleLine userId,
      StringSingleLine lastMessage,
      String photoUrl,
      String name});
}

/// @nodoc
class __$ContactCopyWithImpl<$Res> extends _$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(_Contact _value, $Res Function(_Contact) _then)
      : super(_value, (v) => _then(v as _Contact));

  @override
  _Contact get _value => super._value as _Contact;

  @override
  $Res call({
    Object userId = freezed,
    Object lastMessage = freezed,
    Object photoUrl = freezed,
    Object name = freezed,
  }) {
    return _then(_Contact(
      userId: userId == freezed ? _value.userId : userId as StringSingleLine,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage as StringSingleLine,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_Contact extends _Contact {
  const _$_Contact(
      {@required this.userId,
      @required this.lastMessage,
      this.photoUrl,
      this.name})
      : assert(userId != null),
        assert(lastMessage != null),
        super._();

  @override
  final StringSingleLine userId;
  @override
  final StringSingleLine lastMessage;
  @override
  final String photoUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'Contact(userId: $userId, lastMessage: $lastMessage, photoUrl: $photoUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contact &&
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
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);
}

abstract class _Contact extends Contact {
  const _Contact._() : super._();

  const factory _Contact(
      {@required StringSingleLine userId,
      @required StringSingleLine lastMessage,
      String photoUrl,
      String name}) = _$_Contact;

  @override
  StringSingleLine get userId;

  @override
  StringSingleLine get lastMessage;

  @override
  String get photoUrl;

  @override
  String get name;

  @override
  @JsonKey(ignore: true)
  _$ContactCopyWith<_Contact> get copyWith;
}
