// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestActorEventTearOff {
  const _$RequestActorEventTearOff();

// ignore: unused_element
  _EditRequest editRequest(Request request) {
    return _EditRequest(
      request,
    );
  }

// ignore: unused_element
  _Deleted deleted(Request request) {
    return _Deleted(
      request,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestActorEvent = _$RequestActorEventTearOff();

/// @nodoc
mixin _$RequestActorEvent {
  Request get request;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult editRequest(Request request),
    @required TResult deleted(Request request),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult editRequest(Request request),
    TResult deleted(Request request),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult editRequest(_EditRequest value),
    @required TResult deleted(_Deleted value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult editRequest(_EditRequest value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $RequestActorEventCopyWith<RequestActorEvent> get copyWith;
}

/// @nodoc
abstract class $RequestActorEventCopyWith<$Res> {
  factory $RequestActorEventCopyWith(
          RequestActorEvent value, $Res Function(RequestActorEvent) then) =
      _$RequestActorEventCopyWithImpl<$Res>;

  $Res call({Request request});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class _$RequestActorEventCopyWithImpl<$Res>
    implements $RequestActorEventCopyWith<$Res> {
  _$RequestActorEventCopyWithImpl(this._value, this._then);

  final RequestActorEvent _value;

  // ignore: unused_field
  final $Res Function(RequestActorEvent) _then;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed ? _value.request : request as Request,
    ));
  }

  @override
  $RequestCopyWith<$Res> get request {
    if (_value.request == null) {
      return null;
    }
    return $RequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
abstract class _$EditRequestCopyWith<$Res>
    implements $RequestActorEventCopyWith<$Res> {
  factory _$EditRequestCopyWith(
          _EditRequest value, $Res Function(_EditRequest) then) =
      __$EditRequestCopyWithImpl<$Res>;

  @override
  $Res call({Request request});

  @override
  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$EditRequestCopyWithImpl<$Res>
    extends _$RequestActorEventCopyWithImpl<$Res>
    implements _$EditRequestCopyWith<$Res> {
  __$EditRequestCopyWithImpl(
      _EditRequest _value, $Res Function(_EditRequest) _then)
      : super(_value, (v) => _then(v as _EditRequest));

  @override
  _EditRequest get _value => super._value as _EditRequest;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(_EditRequest(
      request == freezed ? _value.request : request as Request,
    ));
  }
}

/// @nodoc
class _$_EditRequest implements _EditRequest {
  const _$_EditRequest(this.request) : assert(request != null);

  @override
  final Request request;

  @override
  String toString() {
    return 'RequestActorEvent.editRequest(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditRequest &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$EditRequestCopyWith<_EditRequest> get copyWith =>
      __$EditRequestCopyWithImpl<_EditRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult editRequest(Request request),
    @required TResult deleted(Request request),
  }) {
    assert(editRequest != null);
    assert(deleted != null);
    return editRequest(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult editRequest(Request request),
    TResult deleted(Request request),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editRequest != null) {
      return editRequest(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult editRequest(_EditRequest value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(editRequest != null);
    assert(deleted != null);
    return editRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult editRequest(_EditRequest value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editRequest != null) {
      return editRequest(this);
    }
    return orElse();
  }
}

abstract class _EditRequest implements RequestActorEvent {
  const factory _EditRequest(Request request) = _$_EditRequest;

  @override
  Request get request;

  @override
  @JsonKey(ignore: true)
  _$EditRequestCopyWith<_EditRequest> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $RequestActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;

  @override
  $Res call({Request request});

  @override
  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$RequestActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(_Deleted(
      request == freezed ? _value.request : request as Request,
    ));
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.request) : assert(request != null);

  @override
  final Request request;

  @override
  String toString() {
    return 'RequestActorEvent.deleted(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult editRequest(Request request),
    @required TResult deleted(Request request),
  }) {
    assert(editRequest != null);
    assert(deleted != null);
    return deleted(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult editRequest(Request request),
    TResult deleted(Request request),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult editRequest(_EditRequest value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(editRequest != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult editRequest(_EditRequest value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements RequestActorEvent {
  const factory _Deleted(Request request) = _$_Deleted;

  @override
  Request get request;

  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$RequestActorStateTearOff {
  const _$RequestActorStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

// ignore: unused_element
  EditFailure editFailure(RequestFailure requestFailure) {
    return EditFailure(
      requestFailure,
    );
  }

// ignore: unused_element
  DeleteFailure deleteFailure(RequestFailure requestFailure) {
    return DeleteFailure(
      requestFailure,
    );
  }

// ignore: unused_element
  EditSuccess editSuccess() {
    return const EditSuccess();
  }

// ignore: unused_element
  DeleteSuccess deleteSuccess() {
    return const DeleteSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $RequestActorState = _$RequestActorStateTearOff();

/// @nodoc
mixin _$RequestActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(RequestFailure requestFailure),
    @required TResult deleteFailure(RequestFailure requestFailure),
    @required TResult editSuccess(),
    @required TResult deleteSuccess(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(RequestFailure requestFailure),
    TResult deleteFailure(RequestFailure requestFailure),
    TResult editSuccess(),
    TResult deleteSuccess(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult deleteFailure(DeleteFailure value),
    @required TResult editSuccess(EditSuccess value),
    @required TResult deleteSuccess(DeleteSuccess value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult deleteFailure(DeleteFailure value),
    TResult editSuccess(EditSuccess value),
    TResult deleteSuccess(DeleteSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RequestActorStateCopyWith<$Res> {
  factory $RequestActorStateCopyWith(
          RequestActorState value, $Res Function(RequestActorState) then) =
      _$RequestActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestActorStateCopyWithImpl<$Res>
    implements $RequestActorStateCopyWith<$Res> {
  _$RequestActorStateCopyWithImpl(this._value, this._then);

  final RequestActorState _value;

  // ignore: unused_field
  final $Res Function(RequestActorState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$RequestActorStateCopyWithImpl<$Res>
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
    return 'RequestActorState.initial()';
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
    @required TResult editFailure(RequestFailure requestFailure),
    @required TResult deleteFailure(RequestFailure requestFailure),
    @required TResult editSuccess(),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(RequestFailure requestFailure),
    TResult deleteFailure(RequestFailure requestFailure),
    TResult editSuccess(),
    TResult deleteSuccess(),
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
    @required TResult deleteFailure(DeleteFailure value),
    @required TResult editSuccess(EditSuccess value),
    @required TResult deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult deleteFailure(DeleteFailure value),
    TResult editSuccess(EditSuccess value),
    TResult deleteSuccess(DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RequestActorState {
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
    extends _$RequestActorStateCopyWithImpl<$Res>
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
    return 'RequestActorState.actionInProgress()';
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
    @required TResult editFailure(RequestFailure requestFailure),
    @required TResult deleteFailure(RequestFailure requestFailure),
    @required TResult editSuccess(),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(RequestFailure requestFailure),
    TResult deleteFailure(RequestFailure requestFailure),
    TResult editSuccess(),
    TResult deleteSuccess(),
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
    @required TResult deleteFailure(DeleteFailure value),
    @required TResult editSuccess(EditSuccess value),
    @required TResult deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult deleteFailure(DeleteFailure value),
    TResult editSuccess(EditSuccess value),
    TResult deleteSuccess(DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements RequestActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class $EditFailureCopyWith<$Res> {
  factory $EditFailureCopyWith(
          EditFailure value, $Res Function(EditFailure) then) =
      _$EditFailureCopyWithImpl<$Res>;

  $Res call({RequestFailure requestFailure});

  $RequestFailureCopyWith<$Res> get requestFailure;
}

/// @nodoc
class _$EditFailureCopyWithImpl<$Res>
    extends _$RequestActorStateCopyWithImpl<$Res>
    implements $EditFailureCopyWith<$Res> {
  _$EditFailureCopyWithImpl(
      EditFailure _value, $Res Function(EditFailure) _then)
      : super(_value, (v) => _then(v as EditFailure));

  @override
  EditFailure get _value => super._value as EditFailure;

  @override
  $Res call({
    Object requestFailure = freezed,
  }) {
    return _then(EditFailure(
      requestFailure == freezed
          ? _value.requestFailure
          : requestFailure as RequestFailure,
    ));
  }

  @override
  $RequestFailureCopyWith<$Res> get requestFailure {
    if (_value.requestFailure == null) {
      return null;
    }
    return $RequestFailureCopyWith<$Res>(_value.requestFailure, (value) {
      return _then(_value.copyWith(requestFailure: value));
    });
  }
}

/// @nodoc
class _$EditFailure implements EditFailure {
  const _$EditFailure(this.requestFailure) : assert(requestFailure != null);

  @override
  final RequestFailure requestFailure;

  @override
  String toString() {
    return 'RequestActorState.editFailure(requestFailure: $requestFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditFailure &&
            (identical(other.requestFailure, requestFailure) ||
                const DeepCollectionEquality()
                    .equals(other.requestFailure, requestFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestFailure);

  @JsonKey(ignore: true)
  @override
  $EditFailureCopyWith<EditFailure> get copyWith =>
      _$EditFailureCopyWithImpl<EditFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(RequestFailure requestFailure),
    @required TResult deleteFailure(RequestFailure requestFailure),
    @required TResult editSuccess(),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return editFailure(requestFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(RequestFailure requestFailure),
    TResult deleteFailure(RequestFailure requestFailure),
    TResult editSuccess(),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(requestFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult deleteFailure(DeleteFailure value),
    @required TResult editSuccess(EditSuccess value),
    @required TResult deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult deleteFailure(DeleteFailure value),
    TResult editSuccess(EditSuccess value),
    TResult deleteSuccess(DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class EditFailure implements RequestActorState {
  const factory EditFailure(RequestFailure requestFailure) = _$EditFailure;

  RequestFailure get requestFailure;

  @JsonKey(ignore: true)
  $EditFailureCopyWith<EditFailure> get copyWith;
}

/// @nodoc
abstract class $DeleteFailureCopyWith<$Res> {
  factory $DeleteFailureCopyWith(
          DeleteFailure value, $Res Function(DeleteFailure) then) =
      _$DeleteFailureCopyWithImpl<$Res>;

  $Res call({RequestFailure requestFailure});

  $RequestFailureCopyWith<$Res> get requestFailure;
}

/// @nodoc
class _$DeleteFailureCopyWithImpl<$Res>
    extends _$RequestActorStateCopyWithImpl<$Res>
    implements $DeleteFailureCopyWith<$Res> {
  _$DeleteFailureCopyWithImpl(
      DeleteFailure _value, $Res Function(DeleteFailure) _then)
      : super(_value, (v) => _then(v as DeleteFailure));

  @override
  DeleteFailure get _value => super._value as DeleteFailure;

  @override
  $Res call({
    Object requestFailure = freezed,
  }) {
    return _then(DeleteFailure(
      requestFailure == freezed
          ? _value.requestFailure
          : requestFailure as RequestFailure,
    ));
  }

  @override
  $RequestFailureCopyWith<$Res> get requestFailure {
    if (_value.requestFailure == null) {
      return null;
    }
    return $RequestFailureCopyWith<$Res>(_value.requestFailure, (value) {
      return _then(_value.copyWith(requestFailure: value));
    });
  }
}

/// @nodoc
class _$DeleteFailure implements DeleteFailure {
  const _$DeleteFailure(this.requestFailure) : assert(requestFailure != null);

  @override
  final RequestFailure requestFailure;

  @override
  String toString() {
    return 'RequestActorState.deleteFailure(requestFailure: $requestFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFailure &&
            (identical(other.requestFailure, requestFailure) ||
                const DeepCollectionEquality()
                    .equals(other.requestFailure, requestFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestFailure);

  @JsonKey(ignore: true)
  @override
  $DeleteFailureCopyWith<DeleteFailure> get copyWith =>
      _$DeleteFailureCopyWithImpl<DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(RequestFailure requestFailure),
    @required TResult deleteFailure(RequestFailure requestFailure),
    @required TResult editSuccess(),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return deleteFailure(requestFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(RequestFailure requestFailure),
    TResult deleteFailure(RequestFailure requestFailure),
    TResult editSuccess(),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(requestFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult deleteFailure(DeleteFailure value),
    @required TResult editSuccess(EditSuccess value),
    @required TResult deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult deleteFailure(DeleteFailure value),
    TResult editSuccess(EditSuccess value),
    TResult deleteSuccess(DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements RequestActorState {
  const factory DeleteFailure(RequestFailure requestFailure) = _$DeleteFailure;

  RequestFailure get requestFailure;

  @JsonKey(ignore: true)
  $DeleteFailureCopyWith<DeleteFailure> get copyWith;
}

/// @nodoc
abstract class $EditSuccessCopyWith<$Res> {
  factory $EditSuccessCopyWith(
          EditSuccess value, $Res Function(EditSuccess) then) =
      _$EditSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditSuccessCopyWithImpl<$Res>
    extends _$RequestActorStateCopyWithImpl<$Res>
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
    return 'RequestActorState.editSuccess()';
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
    @required TResult editFailure(RequestFailure requestFailure),
    @required TResult deleteFailure(RequestFailure requestFailure),
    @required TResult editSuccess(),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return editSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(RequestFailure requestFailure),
    TResult deleteFailure(RequestFailure requestFailure),
    TResult editSuccess(),
    TResult deleteSuccess(),
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
    @required TResult deleteFailure(DeleteFailure value),
    @required TResult editSuccess(EditSuccess value),
    @required TResult deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return editSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult deleteFailure(DeleteFailure value),
    TResult editSuccess(EditSuccess value),
    TResult deleteSuccess(DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editSuccess != null) {
      return editSuccess(this);
    }
    return orElse();
  }
}

abstract class EditSuccess implements RequestActorState {
  const factory EditSuccess() = _$EditSuccess;
}

/// @nodoc
abstract class $DeleteSuccessCopyWith<$Res> {
  factory $DeleteSuccessCopyWith(
          DeleteSuccess value, $Res Function(DeleteSuccess) then) =
      _$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteSuccessCopyWithImpl<$Res>
    extends _$RequestActorStateCopyWithImpl<$Res>
    implements $DeleteSuccessCopyWith<$Res> {
  _$DeleteSuccessCopyWithImpl(
      DeleteSuccess _value, $Res Function(DeleteSuccess) _then)
      : super(_value, (v) => _then(v as DeleteSuccess));

  @override
  DeleteSuccess get _value => super._value as DeleteSuccess;
}

/// @nodoc
class _$DeleteSuccess implements DeleteSuccess {
  const _$DeleteSuccess();

  @override
  String toString() {
    return 'RequestActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult editFailure(RequestFailure requestFailure),
    @required TResult deleteFailure(RequestFailure requestFailure),
    @required TResult editSuccess(),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult editFailure(RequestFailure requestFailure),
    TResult deleteFailure(RequestFailure requestFailure),
    TResult editSuccess(),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult actionInProgress(ActionInProgress value),
    @required TResult editFailure(EditFailure value),
    @required TResult deleteFailure(DeleteFailure value),
    @required TResult editSuccess(EditSuccess value),
    @required TResult deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(editFailure != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult actionInProgress(ActionInProgress value),
    TResult editFailure(EditFailure value),
    TResult deleteFailure(DeleteFailure value),
    TResult editSuccess(EditSuccess value),
    TResult deleteSuccess(DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements RequestActorState {
  const factory DeleteSuccess() = _$DeleteSuccess;
}
