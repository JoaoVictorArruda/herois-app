// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InfoActorEventTearOff {
  const _$InfoActorEventTearOff();

// ignore: unused_element
  _EditProfile editProfile(Info info) {
    return _EditProfile(
      info,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InfoActorEvent = _$InfoActorEventTearOff();

/// @nodoc
mixin _$InfoActorEvent {
  Info get info;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult editProfile(Info info),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult editProfile(Info info),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult editProfile(_EditProfile value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult editProfile(_EditProfile value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $InfoActorEventCopyWith<InfoActorEvent> get copyWith;
}

/// @nodoc
abstract class $InfoActorEventCopyWith<$Res> {
  factory $InfoActorEventCopyWith(
          InfoActorEvent value, $Res Function(InfoActorEvent) then) =
      _$InfoActorEventCopyWithImpl<$Res>;
  $Res call({Info info});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$InfoActorEventCopyWithImpl<$Res>
    implements $InfoActorEventCopyWith<$Res> {
  _$InfoActorEventCopyWithImpl(this._value, this._then);

  final InfoActorEvent _value;
  // ignore: unused_field
  final $Res Function(InfoActorEvent) _then;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed ? _value.info : info as Info,
    ));
  }

  @override
  $InfoCopyWith<$Res> get info {
    if (_value.info == null) {
      return null;
    }
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$EditProfileCopyWith<$Res>
    implements $InfoActorEventCopyWith<$Res> {
  factory _$EditProfileCopyWith(
          _EditProfile value, $Res Function(_EditProfile) then) =
      __$EditProfileCopyWithImpl<$Res>;
  @override
  $Res call({Info info});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$EditProfileCopyWithImpl<$Res>
    extends _$InfoActorEventCopyWithImpl<$Res>
    implements _$EditProfileCopyWith<$Res> {
  __$EditProfileCopyWithImpl(
      _EditProfile _value, $Res Function(_EditProfile) _then)
      : super(_value, (v) => _then(v as _EditProfile));

  @override
  _EditProfile get _value => super._value as _EditProfile;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_EditProfile(
      info == freezed ? _value.info : info as Info,
    ));
  }
}

/// @nodoc
class _$_EditProfile implements _EditProfile {
  const _$_EditProfile(this.info) : assert(info != null);

  @override
  final Info info;

  @override
  String toString() {
    return 'InfoActorEvent.editProfile(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfile &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$EditProfileCopyWith<_EditProfile> get copyWith =>
      __$EditProfileCopyWithImpl<_EditProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult editProfile(Info info),
  }) {
    assert(editProfile != null);
    return editProfile(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult editProfile(Info info),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editProfile != null) {
      return editProfile(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult editProfile(_EditProfile value),
  }) {
    assert(editProfile != null);
    return editProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult editProfile(_EditProfile value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editProfile != null) {
      return editProfile(this);
    }
    return orElse();
  }
}

abstract class _EditProfile implements InfoActorEvent {
  const factory _EditProfile(Info info) = _$_EditProfile;

  @override
  Info get info;
  @override
  @JsonKey(ignore: true)
  _$EditProfileCopyWith<_EditProfile> get copyWith;
}

/// @nodoc
class _$InfoActorStateTearOff {
  const _$InfoActorStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

// ignore: unused_element
  EditFailure editFailure(InfoFailure infoFailure) {
    return EditFailure(
      infoFailure,
    );
  }

// ignore: unused_element
  EditSuccess editSuccess() {
    return const EditSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $InfoActorState = _$InfoActorStateTearOff();

/// @nodoc
mixin _$InfoActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(InfoFailure infoFailure),
    @required TResult editSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(InfoFailure infoFailure),
    TResult editSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult editSuccess(EditSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult editSuccess(EditSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InfoActorStateCopyWith<$Res> {
  factory $InfoActorStateCopyWith(
          InfoActorState value, $Res Function(InfoActorState) then) =
      _$InfoActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InfoActorStateCopyWithImpl<$Res>
    implements $InfoActorStateCopyWith<$Res> {
  _$InfoActorStateCopyWithImpl(this._value, this._then);

  final InfoActorState _value;
  // ignore: unused_field
  final $Res Function(InfoActorState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$InfoActorStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'InfoActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(InfoFailure infoFailure),
    @required TResult editSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(editSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(InfoFailure infoFailure),
    TResult editSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult editSuccess(EditSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(editSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult editSuccess(EditSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements InfoActorState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ActionInProgressCopyWith<$Res> {
  factory $ActionInProgressCopyWith(
          ActionInProgress value, $Res Function(ActionInProgress) then) =
      _$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActionInProgressCopyWithImpl<$Res>
    extends _$InfoActorStateCopyWithImpl<$Res>
    implements $ActionInProgressCopyWith<$Res> {
  _$ActionInProgressCopyWithImpl(
      ActionInProgress _value, $Res Function(ActionInProgress) _then)
      : super(_value, (v) => _then(v as ActionInProgress));

  @override
  ActionInProgress get _value => super._value as ActionInProgress;
}

/// @nodoc
class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'InfoActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(InfoFailure infoFailure),
    @required TResult editSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(editSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(InfoFailure infoFailure),
    TResult editSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult editSuccess(EditSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(editSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult editSuccess(EditSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements InfoActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class $EditFailureCopyWith<$Res> {
  factory $EditFailureCopyWith(
          EditFailure value, $Res Function(EditFailure) then) =
      _$EditFailureCopyWithImpl<$Res>;
  $Res call({InfoFailure infoFailure});

  $InfoFailureCopyWith<$Res> get infoFailure;
}

/// @nodoc
class _$EditFailureCopyWithImpl<$Res> extends _$InfoActorStateCopyWithImpl<$Res>
    implements $EditFailureCopyWith<$Res> {
  _$EditFailureCopyWithImpl(
      EditFailure _value, $Res Function(EditFailure) _then)
      : super(_value, (v) => _then(v as EditFailure));

  @override
  EditFailure get _value => super._value as EditFailure;

  @override
  $Res call({
    Object infoFailure = freezed,
  }) {
    return _then(EditFailure(
      infoFailure == freezed ? _value.infoFailure : infoFailure as InfoFailure,
    ));
  }

  @override
  $InfoFailureCopyWith<$Res> get infoFailure {
    if (_value.infoFailure == null) {
      return null;
    }
    return $InfoFailureCopyWith<$Res>(_value.infoFailure, (value) {
      return _then(_value.copyWith(infoFailure: value));
    });
  }
}

/// @nodoc
class _$EditFailure implements EditFailure {
  const _$EditFailure(this.infoFailure) : assert(infoFailure != null);

  @override
  final InfoFailure infoFailure;

  @override
  String toString() {
    return 'InfoActorState.editFailure(infoFailure: $infoFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditFailure &&
            (identical(other.infoFailure, infoFailure) ||
                const DeepCollectionEquality()
                    .equals(other.infoFailure, infoFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(infoFailure);

  @JsonKey(ignore: true)
  @override
  $EditFailureCopyWith<EditFailure> get copyWith =>
      _$EditFailureCopyWithImpl<EditFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(InfoFailure infoFailure),
    @required TResult editSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(editSuccess != null);
    return editFailure(infoFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(InfoFailure infoFailure),
    TResult editSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(infoFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult editSuccess(EditSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(editSuccess != null);
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult editSuccess(EditSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class EditFailure implements InfoActorState {
  const factory EditFailure(InfoFailure infoFailure) = _$EditFailure;

  InfoFailure get infoFailure;
  @JsonKey(ignore: true)
  $EditFailureCopyWith<EditFailure> get copyWith;
}

/// @nodoc
abstract class $EditSuccessCopyWith<$Res> {
  factory $EditSuccessCopyWith(
          EditSuccess value, $Res Function(EditSuccess) then) =
      _$EditSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditSuccessCopyWithImpl<$Res> extends _$InfoActorStateCopyWithImpl<$Res>
    implements $EditSuccessCopyWith<$Res> {
  _$EditSuccessCopyWithImpl(
      EditSuccess _value, $Res Function(EditSuccess) _then)
      : super(_value, (v) => _then(v as EditSuccess));

  @override
  EditSuccess get _value => super._value as EditSuccess;
}

/// @nodoc
class _$EditSuccess implements EditSuccess {
  const _$EditSuccess();

  @override
  String toString() {
    return 'InfoActorState.editSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(InfoFailure infoFailure),
    @required TResult editSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(editSuccess != null);
    return editSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(InfoFailure infoFailure),
    TResult editSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editSuccess != null) {
      return editSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult editSuccess(EditSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(editSuccess != null);
    return editSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult editSuccess(EditSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editSuccess != null) {
      return editSuccess(this);
    }
    return orElse();
  }
}

abstract class EditSuccess implements InfoActorState {
  const factory EditSuccess() = _$EditSuccess;
}
