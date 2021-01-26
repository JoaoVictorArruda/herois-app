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
      @required StringSingleLine lastMessage}) {
    return _Contact(
      userId: userId,
      lastMessage: lastMessage,
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

  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;
  $Res call({StringSingleLine userId, StringSingleLine lastMessage});
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
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as StringSingleLine,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage as StringSingleLine,
    ));
  }
}

/// @nodoc
abstract class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) then) =
      __$ContactCopyWithImpl<$Res>;
  @override
  $Res call({StringSingleLine userId, StringSingleLine lastMessage});
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
  }) {
    return _then(_Contact(
      userId: userId == freezed ? _value.userId : userId as StringSingleLine,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage as StringSingleLine,
    ));
  }
}

/// @nodoc
class _$_Contact extends _Contact {
  const _$_Contact({@required this.userId, @required this.lastMessage})
      : assert(userId != null),
        assert(lastMessage != null),
        super._();

  @override
  final StringSingleLine userId;
  @override
  final StringSingleLine lastMessage;

  @override
  String toString() {
    return 'Contact(userId: $userId, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contact &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(lastMessage);

  @JsonKey(ignore: true)
  @override
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);
}

abstract class _Contact extends Contact {
  const _Contact._() : super._();
  const factory _Contact(
      {@required StringSingleLine userId,
      @required StringSingleLine lastMessage}) = _$_Contact;

  @override
  StringSingleLine get userId;
  @override
  StringSingleLine get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$ContactCopyWith<_Contact> get copyWith;
}
