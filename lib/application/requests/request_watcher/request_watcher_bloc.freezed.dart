// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestWatcherEventTearOff {
  const _$RequestWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchOtherUserStarted watchOtherUserStarted(String userId) {
    return _WatchOtherUserStarted(
      userId,
    );
  }

// ignore: unused_element
  _RequestReceived requestReceived(
      Either<RequestFailure, KtList<Request>> failureOrRequest) {
    return _RequestReceived(
      failureOrRequest,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestWatcherEvent = _$RequestWatcherEventTearOff();

/// @nodoc
mixin _$RequestWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required
        TResult requestReceived(
            Either<RequestFailure, KtList<Request>> failureOrRequest),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult requestReceived(
        Either<RequestFailure, KtList<Request>> failureOrRequest),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult requestReceived(_RequestReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult requestReceived(_RequestReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RequestWatcherEventCopyWith<$Res> {
  factory $RequestWatcherEventCopyWith(
          RequestWatcherEvent value, $Res Function(RequestWatcherEvent) then) =
      _$RequestWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestWatcherEventCopyWithImpl<$Res>
    implements $RequestWatcherEventCopyWith<$Res> {
  _$RequestWatcherEventCopyWithImpl(this._value, this._then);

  final RequestWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(RequestWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$RequestWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'RequestWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required
        TResult requestReceived(
            Either<RequestFailure, KtList<Request>> failureOrRequest),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(requestReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult requestReceived(
        Either<RequestFailure, KtList<Request>> failureOrRequest),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult requestReceived(_RequestReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(requestReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult requestReceived(_RequestReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements RequestWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchOtherUserStartedCopyWith<$Res> {
  factory _$WatchOtherUserStartedCopyWith(_WatchOtherUserStarted value,
          $Res Function(_WatchOtherUserStarted) then) =
      __$WatchOtherUserStartedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$WatchOtherUserStartedCopyWithImpl<$Res>
    extends _$RequestWatcherEventCopyWithImpl<$Res>
    implements _$WatchOtherUserStartedCopyWith<$Res> {
  __$WatchOtherUserStartedCopyWithImpl(_WatchOtherUserStarted _value,
      $Res Function(_WatchOtherUserStarted) _then)
      : super(_value, (v) => _then(v as _WatchOtherUserStarted));

  @override
  _WatchOtherUserStarted get _value => super._value as _WatchOtherUserStarted;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_WatchOtherUserStarted(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_WatchOtherUserStarted implements _WatchOtherUserStarted {
  const _$_WatchOtherUserStarted(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'RequestWatcherEvent.watchOtherUserStarted(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchOtherUserStarted &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$WatchOtherUserStartedCopyWith<_WatchOtherUserStarted> get copyWith =>
      __$WatchOtherUserStartedCopyWithImpl<_WatchOtherUserStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required
        TResult requestReceived(
            Either<RequestFailure, KtList<Request>> failureOrRequest),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(requestReceived != null);
    return watchOtherUserStarted(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult requestReceived(
        Either<RequestFailure, KtList<Request>> failureOrRequest),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchOtherUserStarted != null) {
      return watchOtherUserStarted(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult requestReceived(_RequestReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(requestReceived != null);
    return watchOtherUserStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult requestReceived(_RequestReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchOtherUserStarted != null) {
      return watchOtherUserStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchOtherUserStarted implements RequestWatcherEvent {
  const factory _WatchOtherUserStarted(String userId) =
      _$_WatchOtherUserStarted;

  String get userId;
  @JsonKey(ignore: true)
  _$WatchOtherUserStartedCopyWith<_WatchOtherUserStarted> get copyWith;
}

/// @nodoc
abstract class _$RequestReceivedCopyWith<$Res> {
  factory _$RequestReceivedCopyWith(
          _RequestReceived value, $Res Function(_RequestReceived) then) =
      __$RequestReceivedCopyWithImpl<$Res>;
  $Res call({Either<RequestFailure, KtList<Request>> failureOrRequest});
}

/// @nodoc
class __$RequestReceivedCopyWithImpl<$Res>
    extends _$RequestWatcherEventCopyWithImpl<$Res>
    implements _$RequestReceivedCopyWith<$Res> {
  __$RequestReceivedCopyWithImpl(
      _RequestReceived _value, $Res Function(_RequestReceived) _then)
      : super(_value, (v) => _then(v as _RequestReceived));

  @override
  _RequestReceived get _value => super._value as _RequestReceived;

  @override
  $Res call({
    Object failureOrRequest = freezed,
  }) {
    return _then(_RequestReceived(
      failureOrRequest == freezed
          ? _value.failureOrRequest
          : failureOrRequest as Either<RequestFailure, KtList<Request>>,
    ));
  }
}

/// @nodoc
class _$_RequestReceived implements _RequestReceived {
  const _$_RequestReceived(this.failureOrRequest)
      : assert(failureOrRequest != null);

  @override
  final Either<RequestFailure, KtList<Request>> failureOrRequest;

  @override
  String toString() {
    return 'RequestWatcherEvent.requestReceived(failureOrRequest: $failureOrRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestReceived &&
            (identical(other.failureOrRequest, failureOrRequest) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRequest, failureOrRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRequest);

  @JsonKey(ignore: true)
  @override
  _$RequestReceivedCopyWith<_RequestReceived> get copyWith =>
      __$RequestReceivedCopyWithImpl<_RequestReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required
        TResult requestReceived(
            Either<RequestFailure, KtList<Request>> failureOrRequest),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(requestReceived != null);
    return requestReceived(failureOrRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult requestReceived(
        Either<RequestFailure, KtList<Request>> failureOrRequest),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestReceived != null) {
      return requestReceived(failureOrRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult requestReceived(_RequestReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(requestReceived != null);
    return requestReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult requestReceived(_RequestReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestReceived != null) {
      return requestReceived(this);
    }
    return orElse();
  }
}

abstract class _RequestReceived implements RequestWatcherEvent {
  const factory _RequestReceived(
          Either<RequestFailure, KtList<Request>> failureOrRequest) =
      _$_RequestReceived;

  Either<RequestFailure, KtList<Request>> get failureOrRequest;
  @JsonKey(ignore: true)
  _$RequestReceivedCopyWith<_RequestReceived> get copyWith;
}

/// @nodoc
class _$RequestWatcherStateTearOff {
  const _$RequestWatcherStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(KtList<Request> requests) {
    return LoadSuccess(
      requests,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(RequestFailure requestFailure) {
    return LoadFailure(
      requestFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestWatcherState = _$RequestWatcherStateTearOff();

/// @nodoc
mixin _$RequestWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Request> requests),
    @required TResult loadFailure(RequestFailure requestFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Request> requests),
    TResult loadFailure(RequestFailure requestFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RequestWatcherStateCopyWith<$Res> {
  factory $RequestWatcherStateCopyWith(
          RequestWatcherState value, $Res Function(RequestWatcherState) then) =
      _$RequestWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestWatcherStateCopyWithImpl<$Res>
    implements $RequestWatcherStateCopyWith<$Res> {
  _$RequestWatcherStateCopyWithImpl(this._value, this._then);

  final RequestWatcherState _value;
  // ignore: unused_field
  final $Res Function(RequestWatcherState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$RequestWatcherStateCopyWithImpl<$Res>
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
    return 'RequestWatcherState.initial()';
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
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Request> requests),
    @required TResult loadFailure(RequestFailure requestFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Request> requests),
    TResult loadFailure(RequestFailure requestFailure),
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
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RequestWatcherState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$RequestWatcherStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

/// @nodoc
class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'RequestWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Request> requests),
    @required TResult loadFailure(RequestFailure requestFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Request> requests),
    TResult loadFailure(RequestFailure requestFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements RequestWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Request> requests});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$RequestWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object requests = freezed,
  }) {
    return _then(LoadSuccess(
      requests == freezed ? _value.requests : requests as KtList<Request>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.requests) : assert(requests != null);

  @override
  final KtList<Request> requests;

  @override
  String toString() {
    return 'RequestWatcherState.loadSuccess(requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requests);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Request> requests),
    @required TResult loadFailure(RequestFailure requestFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(requests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Request> requests),
    TResult loadFailure(RequestFailure requestFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(requests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements RequestWatcherState {
  const factory LoadSuccess(KtList<Request> requests) = _$LoadSuccess;

  KtList<Request> get requests;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({RequestFailure requestFailure});

  $RequestFailureCopyWith<$Res> get requestFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$RequestWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object requestFailure = freezed,
  }) {
    return _then(LoadFailure(
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
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.requestFailure) : assert(requestFailure != null);

  @override
  final RequestFailure requestFailure;

  @override
  String toString() {
    return 'RequestWatcherState.loadFailure(requestFailure: $requestFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
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
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Request> requests),
    @required TResult loadFailure(RequestFailure requestFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(requestFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Request> requests),
    TResult loadFailure(RequestFailure requestFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(requestFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements RequestWatcherState {
  const factory LoadFailure(RequestFailure requestFailure) = _$LoadFailure;

  RequestFailure get requestFailure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
