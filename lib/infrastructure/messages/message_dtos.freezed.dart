// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
class _$MessageDtoTearOff {
  const _$MessageDtoTearOff();

// ignore: unused_element
  _MessageDto call(
      {@JsonKey(ignore: true) String id,
      @required String text,
      @required bool sentByMe,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _MessageDto(
      id: id,
      text: text,
      sentByMe: sentByMe,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  MessageDto fromJson(Map<String, Object> json) {
    return MessageDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MessageDto = _$MessageDtoTearOff();

/// @nodoc
mixin _$MessageDto {
  @JsonKey(ignore: true)
  String get id;
  String get text; // @required String dateTime,
  bool get sentByMe;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MessageDtoCopyWith<MessageDto> get copyWith;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String text,
      bool sentByMe,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res> implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  final MessageDto _value;
  // ignore: unused_field
  final $Res Function(MessageDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object sentByMe = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
      sentByMe: sentByMe == freezed ? _value.sentByMe : sentByMe as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$MessageDtoCopyWith<$Res> implements $MessageDtoCopyWith<$Res> {
  factory _$MessageDtoCopyWith(
          _MessageDto value, $Res Function(_MessageDto) then) =
      __$MessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String text,
      bool sentByMe,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$MessageDtoCopyWithImpl<$Res> extends _$MessageDtoCopyWithImpl<$Res>
    implements _$MessageDtoCopyWith<$Res> {
  __$MessageDtoCopyWithImpl(
      _MessageDto _value, $Res Function(_MessageDto) _then)
      : super(_value, (v) => _then(v as _MessageDto));

  @override
  _MessageDto get _value => super._value as _MessageDto;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object sentByMe = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_MessageDto(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
      sentByMe: sentByMe == freezed ? _value.sentByMe : sentByMe as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MessageDto extends _MessageDto {
  _$_MessageDto(
      {@JsonKey(ignore: true) this.id,
      @required this.text,
      @required this.sentByMe,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(text != null),
        assert(sentByMe != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_MessageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String text;
  @override // @required String dateTime,
  final bool sentByMe;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'MessageDto(id: $id, text: $text, sentByMe: $sentByMe, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.sentByMe, sentByMe) ||
                const DeepCollectionEquality()
                    .equals(other.sentByMe, sentByMe)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(sentByMe) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$MessageDtoCopyWith<_MessageDto> get copyWith =>
      __$MessageDtoCopyWithImpl<_MessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageDtoToJson(this);
  }
}

abstract class _MessageDto extends MessageDto {
  _MessageDto._() : super._();
  factory _MessageDto(
          {@JsonKey(ignore: true) String id,
          @required String text,
          @required bool sentByMe,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_MessageDto;

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$_MessageDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get text;
  @override // @required String dateTime,
  bool get sentByMe;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$MessageDtoCopyWith<_MessageDto> get copyWith;
}
