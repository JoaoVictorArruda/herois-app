// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessageFormEventTearOff {
  const _$MessageFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Message> initialMessageOption) {
    return _Initialized(
      initialMessageOption,
    );
  }

// ignore: unused_element
  _TextChanged textChanged(String textStr) {
    return _TextChanged(
      textStr,
    );
  }

// ignore: unused_element
  _Saved saved(String userId) {
    return _Saved(
      userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessageFormEvent = _$MessageFormEventTearOff();

/// @nodoc
mixin _$MessageFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Message> initialMessageOption),
    @required TResult textChanged(String textStr),
    @required TResult saved(String userId),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Message> initialMessageOption),
    TResult textChanged(String textStr),
    TResult saved(String userId),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult textChanged(_TextChanged value),
    @required TResult saved(_Saved value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult textChanged(_TextChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MessageFormEventCopyWith<$Res> {
  factory $MessageFormEventCopyWith(
          MessageFormEvent value, $Res Function(MessageFormEvent) then) =
      _$MessageFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageFormEventCopyWithImpl<$Res>
    implements $MessageFormEventCopyWith<$Res> {
  _$MessageFormEventCopyWithImpl(this._value, this._then);

  final MessageFormEvent _value;

  // ignore: unused_field
  final $Res Function(MessageFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;

  $Res call({Option<Message> initialMessageOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$MessageFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialMessageOption = freezed,
  }) {
    return _then(_Initialized(
      initialMessageOption == freezed
          ? _value.initialMessageOption
          : initialMessageOption as Option<Message>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialMessageOption)
      : assert(initialMessageOption != null);

  @override
  final Option<Message> initialMessageOption;

  @override
  String toString() {
    return 'MessageFormEvent.initialized(initialMessageOption: $initialMessageOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialMessageOption, initialMessageOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialMessageOption, initialMessageOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialMessageOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Message> initialMessageOption),
    @required TResult textChanged(String textStr),
    @required TResult saved(String userId),
  }) {
    assert(initialized != null);
    assert(textChanged != null);
    assert(saved != null);
    return initialized(initialMessageOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Message> initialMessageOption),
    TResult textChanged(String textStr),
    TResult saved(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialMessageOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult textChanged(_TextChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(textChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult textChanged(_TextChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements MessageFormEvent {
  const factory _Initialized(Option<Message> initialMessageOption) =
      _$_Initialized;

  Option<Message> get initialMessageOption;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$TextChangedCopyWith<$Res> {
  factory _$TextChangedCopyWith(
          _TextChanged value, $Res Function(_TextChanged) then) =
      __$TextChangedCopyWithImpl<$Res>;

  $Res call({String textStr});
}

/// @nodoc
class __$TextChangedCopyWithImpl<$Res>
    extends _$MessageFormEventCopyWithImpl<$Res>
    implements _$TextChangedCopyWith<$Res> {
  __$TextChangedCopyWithImpl(
      _TextChanged _value, $Res Function(_TextChanged) _then)
      : super(_value, (v) => _then(v as _TextChanged));

  @override
  _TextChanged get _value => super._value as _TextChanged;

  @override
  $Res call({
    Object textStr = freezed,
  }) {
    return _then(_TextChanged(
      textStr == freezed ? _value.textStr : textStr as String,
    ));
  }
}

/// @nodoc
class _$_TextChanged implements _TextChanged {
  const _$_TextChanged(this.textStr) : assert(textStr != null);

  @override
  final String textStr;

  @override
  String toString() {
    return 'MessageFormEvent.textChanged(textStr: $textStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextChanged &&
            (identical(other.textStr, textStr) ||
                const DeepCollectionEquality().equals(other.textStr, textStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(textStr);

  @JsonKey(ignore: true)
  @override
  _$TextChangedCopyWith<_TextChanged> get copyWith =>
      __$TextChangedCopyWithImpl<_TextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Message> initialMessageOption),
    @required TResult textChanged(String textStr),
    @required TResult saved(String userId),
  }) {
    assert(initialized != null);
    assert(textChanged != null);
    assert(saved != null);
    return textChanged(textStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Message> initialMessageOption),
    TResult textChanged(String textStr),
    TResult saved(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (textChanged != null) {
      return textChanged(textStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult textChanged(_TextChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(textChanged != null);
    assert(saved != null);
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult textChanged(_TextChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class _TextChanged implements MessageFormEvent {
  const factory _TextChanged(String textStr) = _$_TextChanged;

  String get textStr;

  @JsonKey(ignore: true)
  _$TextChangedCopyWith<_TextChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;

  $Res call({String userId});
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$MessageFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_Saved(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'MessageFormEvent.saved(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Message> initialMessageOption),
    @required TResult textChanged(String textStr),
    @required TResult saved(String userId),
  }) {
    assert(initialized != null);
    assert(textChanged != null);
    assert(saved != null);
    return saved(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Message> initialMessageOption),
    TResult textChanged(String textStr),
    TResult saved(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult textChanged(_TextChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(textChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult textChanged(_TextChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements MessageFormEvent {
  const factory _Saved(String userId) = _$_Saved;

  String get userId;

  @JsonKey(ignore: true)
  _$SavedCopyWith<_Saved> get copyWith;
}

/// @nodoc
class _$MessageFormStateTearOff {
  const _$MessageFormStateTearOff();

// ignore: unused_element
  _MessageFormState call(
      {@required
          Message message,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption}) {
    return _MessageFormState(
      message: message,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessageFormState = _$MessageFormStateTearOff();

/// @nodoc
mixin _$MessageFormState {
  Message get message;

  bool get showErrorMessages;

  bool get isEditing;

  bool get isSaving;

  Option<Either<MessageFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $MessageFormStateCopyWith<MessageFormState> get copyWith;
}

/// @nodoc
abstract class $MessageFormStateCopyWith<$Res> {
  factory $MessageFormStateCopyWith(
          MessageFormState value, $Res Function(MessageFormState) then) =
      _$MessageFormStateCopyWithImpl<$Res>;

  $Res call(
      {Message message,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$MessageFormStateCopyWithImpl<$Res>
    implements $MessageFormStateCopyWith<$Res> {
  _$MessageFormStateCopyWithImpl(this._value, this._then);

  final MessageFormState _value;

  // ignore: unused_field
  final $Res Function(MessageFormState) _then;

  @override
  $Res call({
    Object message = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as Message,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<MessageFailure, Unit>>,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    if (_value.message == null) {
      return null;
    }
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$MessageFormStateCopyWith<$Res>
    implements $MessageFormStateCopyWith<$Res> {
  factory _$MessageFormStateCopyWith(
          _MessageFormState value, $Res Function(_MessageFormState) then) =
      __$MessageFormStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {Message message,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$MessageFormStateCopyWithImpl<$Res>
    extends _$MessageFormStateCopyWithImpl<$Res>
    implements _$MessageFormStateCopyWith<$Res> {
  __$MessageFormStateCopyWithImpl(
      _MessageFormState _value, $Res Function(_MessageFormState) _then)
      : super(_value, (v) => _then(v as _MessageFormState));

  @override
  _MessageFormState get _value => super._value as _MessageFormState;

  @override
  $Res call({
    Object message = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_MessageFormState(
      message: message == freezed ? _value.message : message as Message,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_MessageFormState implements _MessageFormState {
  const _$_MessageFormState(
      {@required this.message,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(message != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Message message;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'MessageFormState(message: $message, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageFormState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$MessageFormStateCopyWith<_MessageFormState> get copyWith =>
      __$MessageFormStateCopyWithImpl<_MessageFormState>(this, _$identity);
}

abstract class _MessageFormState implements MessageFormState {
  const factory _MessageFormState(
      {@required
          Message message,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<MessageFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_MessageFormState;

  @override
  Message get message;

  @override
  bool get showErrorMessages;

  @override
  bool get isEditing;

  @override
  bool get isSaving;

  @override
  Option<Either<MessageFailure, Unit>> get saveFailureOrSuccessOption;

  @override
  @JsonKey(ignore: true)
  _$MessageFormStateCopyWith<_MessageFormState> get copyWith;
}
