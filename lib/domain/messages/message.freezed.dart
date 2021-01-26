// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

// ignore: unused_element
  _Message call(
      {@required UniqueId id,
      @required MessageText text,
      @required DateTime dateTime,
      @required bool sentByMe}) {
    return _Message(
      id: id,
      text: text,
      dateTime: dateTime,
      sentByMe: sentByMe,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  UniqueId get id;
  MessageText get text;
  DateTime get dateTime;
  bool get sentByMe;

  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call({UniqueId id, MessageText text, DateTime dateTime, bool sentByMe});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object dateTime = freezed,
    Object sentByMe = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      text: text == freezed ? _value.text : text as MessageText,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
      sentByMe: sentByMe == freezed ? _value.sentByMe : sentByMe as bool,
    ));
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, MessageText text, DateTime dateTime, bool sentByMe});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object dateTime = freezed,
    Object sentByMe = freezed,
  }) {
    return _then(_Message(
      id: id == freezed ? _value.id : id as UniqueId,
      text: text == freezed ? _value.text : text as MessageText,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
      sentByMe: sentByMe == freezed ? _value.sentByMe : sentByMe as bool,
    ));
  }
}

/// @nodoc
class _$_Message extends _Message {
  const _$_Message(
      {@required this.id,
      @required this.text,
      @required this.dateTime,
      @required this.sentByMe})
      : assert(id != null),
        assert(text != null),
        assert(dateTime != null),
        assert(sentByMe != null),
        super._();

  @override
  final UniqueId id;
  @override
  final MessageText text;
  @override
  final DateTime dateTime;
  @override
  final bool sentByMe;

  @override
  String toString() {
    return 'Message(id: $id, text: $text, dateTime: $dateTime, sentByMe: $sentByMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.sentByMe, sentByMe) ||
                const DeepCollectionEquality()
                    .equals(other.sentByMe, sentByMe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(sentByMe);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message extends Message {
  const _Message._() : super._();
  const factory _Message(
      {@required UniqueId id,
      @required MessageText text,
      @required DateTime dateTime,
      @required bool sentByMe}) = _$_Message;

  @override
  UniqueId get id;
  @override
  MessageText get text;
  @override
  DateTime get dateTime;
  @override
  bool get sentByMe;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith;
}
