// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_search_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestSearchWatcherEventTearOff {
  const _$RequestSearchWatcherEventTearOff();

// ignore: unused_element
  _WatchNearbyStarted watchNearbyStarted() {
    return const _WatchNearbyStarted();
  }

// ignore: unused_element
  _RequestSearchReceived requestSearchReceived(
      Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
      RequestSearchFilter requestSearchFilter) {
    return _RequestSearchReceived(
      failureOrRequest,
      requestSearchFilter,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestSearchWatcherEvent = _$RequestSearchWatcherEventTearOff();

/// @nodoc
mixin _$RequestSearchWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNearbyStarted(),
    @required
        TResult requestSearchReceived(
            Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
            RequestSearchFilter requestSearchFilter),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNearbyStarted(),
    TResult requestSearchReceived(
        Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
        RequestSearchFilter requestSearchFilter),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNearbyStarted(_WatchNearbyStarted value),
    @required TResult requestSearchReceived(_RequestSearchReceived value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNearbyStarted(_WatchNearbyStarted value),
    TResult requestSearchReceived(_RequestSearchReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RequestSearchWatcherEventCopyWith<$Res> {
  factory $RequestSearchWatcherEventCopyWith(RequestSearchWatcherEvent value,
          $Res Function(RequestSearchWatcherEvent) then) =
      _$RequestSearchWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestSearchWatcherEventCopyWithImpl<$Res>
    implements $RequestSearchWatcherEventCopyWith<$Res> {
  _$RequestSearchWatcherEventCopyWithImpl(this._value, this._then);

  final RequestSearchWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(RequestSearchWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchNearbyStartedCopyWith<$Res> {
  factory _$WatchNearbyStartedCopyWith(
          _WatchNearbyStarted value, $Res Function(_WatchNearbyStarted) then) =
      __$WatchNearbyStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchNearbyStartedCopyWithImpl<$Res>
    extends _$RequestSearchWatcherEventCopyWithImpl<$Res>
    implements _$WatchNearbyStartedCopyWith<$Res> {
  __$WatchNearbyStartedCopyWithImpl(
      _WatchNearbyStarted _value, $Res Function(_WatchNearbyStarted) _then)
      : super(_value, (v) => _then(v as _WatchNearbyStarted));

  @override
  _WatchNearbyStarted get _value => super._value as _WatchNearbyStarted;
}

/// @nodoc
class _$_WatchNearbyStarted implements _WatchNearbyStarted {
  const _$_WatchNearbyStarted();

  @override
  String toString() {
    return 'RequestSearchWatcherEvent.watchNearbyStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchNearbyStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNearbyStarted(),
    @required
        TResult requestSearchReceived(
            Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
            RequestSearchFilter requestSearchFilter),
  }) {
    assert(watchNearbyStarted != null);
    assert(requestSearchReceived != null);
    return watchNearbyStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNearbyStarted(),
    TResult requestSearchReceived(
        Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
        RequestSearchFilter requestSearchFilter),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchNearbyStarted != null) {
      return watchNearbyStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNearbyStarted(_WatchNearbyStarted value),
    @required TResult requestSearchReceived(_RequestSearchReceived value),
  }) {
    assert(watchNearbyStarted != null);
    assert(requestSearchReceived != null);
    return watchNearbyStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNearbyStarted(_WatchNearbyStarted value),
    TResult requestSearchReceived(_RequestSearchReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchNearbyStarted != null) {
      return watchNearbyStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchNearbyStarted implements RequestSearchWatcherEvent {
  const factory _WatchNearbyStarted() = _$_WatchNearbyStarted;
}

/// @nodoc
abstract class _$RequestSearchReceivedCopyWith<$Res> {
  factory _$RequestSearchReceivedCopyWith(_RequestSearchReceived value,
          $Res Function(_RequestSearchReceived) then) =
      __$RequestSearchReceivedCopyWithImpl<$Res>;

  $Res call(
      {Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
      RequestSearchFilter requestSearchFilter});

  $RequestSearchFilterCopyWith<$Res> get requestSearchFilter;
}

/// @nodoc
class __$RequestSearchReceivedCopyWithImpl<$Res>
    extends _$RequestSearchWatcherEventCopyWithImpl<$Res>
    implements _$RequestSearchReceivedCopyWith<$Res> {
  __$RequestSearchReceivedCopyWithImpl(_RequestSearchReceived _value,
      $Res Function(_RequestSearchReceived) _then)
      : super(_value, (v) => _then(v as _RequestSearchReceived));

  @override
  _RequestSearchReceived get _value => super._value as _RequestSearchReceived;

  @override
  $Res call({
    Object failureOrRequest = freezed,
    Object requestSearchFilter = freezed,
  }) {
    return _then(_RequestSearchReceived(
      failureOrRequest == freezed
          ? _value.failureOrRequest
          : failureOrRequest as Either<RequestFailure, KtList<RequestSearch>>,
      requestSearchFilter == freezed
          ? _value.requestSearchFilter
          : requestSearchFilter as RequestSearchFilter,
    ));
  }

  @override
  $RequestSearchFilterCopyWith<$Res> get requestSearchFilter {
    if (_value.requestSearchFilter == null) {
      return null;
    }
    return $RequestSearchFilterCopyWith<$Res>(_value.requestSearchFilter,
        (value) {
      return _then(_value.copyWith(requestSearchFilter: value));
    });
  }
}

/// @nodoc
class _$_RequestSearchReceived implements _RequestSearchReceived {
  const _$_RequestSearchReceived(
      this.failureOrRequest, this.requestSearchFilter)
      : assert(failureOrRequest != null),
        assert(requestSearchFilter != null);

  @override
  final Either<RequestFailure, KtList<RequestSearch>> failureOrRequest;
  @override
  final RequestSearchFilter requestSearchFilter;

  @override
  String toString() {
    return 'RequestSearchWatcherEvent.requestSearchReceived(failureOrRequest: $failureOrRequest, requestSearchFilter: $requestSearchFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSearchReceived &&
            (identical(other.failureOrRequest, failureOrRequest) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRequest, failureOrRequest)) &&
            (identical(other.requestSearchFilter, requestSearchFilter) ||
                const DeepCollectionEquality()
                    .equals(other.requestSearchFilter, requestSearchFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRequest) ^
      const DeepCollectionEquality().hash(requestSearchFilter);

  @JsonKey(ignore: true)
  @override
  _$RequestSearchReceivedCopyWith<_RequestSearchReceived> get copyWith =>
      __$RequestSearchReceivedCopyWithImpl<_RequestSearchReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNearbyStarted(),
    @required
        TResult requestSearchReceived(
            Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
            RequestSearchFilter requestSearchFilter),
  }) {
    assert(watchNearbyStarted != null);
    assert(requestSearchReceived != null);
    return requestSearchReceived(failureOrRequest, requestSearchFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNearbyStarted(),
    TResult requestSearchReceived(
        Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
        RequestSearchFilter requestSearchFilter),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestSearchReceived != null) {
      return requestSearchReceived(failureOrRequest, requestSearchFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNearbyStarted(_WatchNearbyStarted value),
    @required TResult requestSearchReceived(_RequestSearchReceived value),
  }) {
    assert(watchNearbyStarted != null);
    assert(requestSearchReceived != null);
    return requestSearchReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNearbyStarted(_WatchNearbyStarted value),
    TResult requestSearchReceived(_RequestSearchReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestSearchReceived != null) {
      return requestSearchReceived(this);
    }
    return orElse();
  }
}

abstract class _RequestSearchReceived implements RequestSearchWatcherEvent {
  const factory _RequestSearchReceived(
      Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
      RequestSearchFilter requestSearchFilter) = _$_RequestSearchReceived;

  Either<RequestFailure, KtList<RequestSearch>> get failureOrRequest;

  RequestSearchFilter get requestSearchFilter;

  @JsonKey(ignore: true)
  _$RequestSearchReceivedCopyWith<_RequestSearchReceived> get copyWith;
}

/// @nodoc
class _$RequestSearchWatcherStateTearOff {
  const _$RequestSearchWatcherStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(KtList<RequestSearch> requests, String userId,
      RequestSearchFilter requestSearchFilter) {
    return LoadSuccess(
      requests,
      userId,
      requestSearchFilter,
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
const $RequestSearchWatcherState = _$RequestSearchWatcherStateTearOff();

/// @nodoc
mixin _$RequestSearchWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required
        TResult loadSuccess(KtList<RequestSearch> requests, String userId,
            RequestSearchFilter requestSearchFilter),
    @required TResult loadFailure(RequestFailure requestFailure),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<RequestSearch> requests, String userId,
        RequestSearchFilter requestSearchFilter),
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
abstract class $RequestSearchWatcherStateCopyWith<$Res> {
  factory $RequestSearchWatcherStateCopyWith(RequestSearchWatcherState value,
          $Res Function(RequestSearchWatcherState) then) =
      _$RequestSearchWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestSearchWatcherStateCopyWithImpl<$Res>
    implements $RequestSearchWatcherStateCopyWith<$Res> {
  _$RequestSearchWatcherStateCopyWithImpl(this._value, this._then);

  final RequestSearchWatcherState _value;

  // ignore: unused_field
  final $Res Function(RequestSearchWatcherState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$RequestSearchWatcherStateCopyWithImpl<$Res>
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
    return 'RequestSearchWatcherState.initial()';
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
    @required
        TResult loadSuccess(KtList<RequestSearch> requests, String userId,
            RequestSearchFilter requestSearchFilter),
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
    TResult loadSuccess(KtList<RequestSearch> requests, String userId,
        RequestSearchFilter requestSearchFilter),
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

abstract class Initial implements RequestSearchWatcherState {
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
    extends _$RequestSearchWatcherStateCopyWithImpl<$Res>
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
    return 'RequestSearchWatcherState.loadInProgress()';
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
    @required
        TResult loadSuccess(KtList<RequestSearch> requests, String userId,
            RequestSearchFilter requestSearchFilter),
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
    TResult loadSuccess(KtList<RequestSearch> requests, String userId,
        RequestSearchFilter requestSearchFilter),
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

abstract class DataTransferInProgress implements RequestSearchWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;

  $Res call(
      {KtList<RequestSearch> requests,
      String userId,
      RequestSearchFilter requestSearchFilter});

  $RequestSearchFilterCopyWith<$Res> get requestSearchFilter;
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$RequestSearchWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object requests = freezed,
    Object userId = freezed,
    Object requestSearchFilter = freezed,
  }) {
    return _then(LoadSuccess(
      requests == freezed ? _value.requests : requests as KtList<RequestSearch>,
      userId == freezed ? _value.userId : userId as String,
      requestSearchFilter == freezed
          ? _value.requestSearchFilter
          : requestSearchFilter as RequestSearchFilter,
    ));
  }

  @override
  $RequestSearchFilterCopyWith<$Res> get requestSearchFilter {
    if (_value.requestSearchFilter == null) {
      return null;
    }
    return $RequestSearchFilterCopyWith<$Res>(_value.requestSearchFilter,
        (value) {
      return _then(_value.copyWith(requestSearchFilter: value));
    });
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.requests, this.userId, this.requestSearchFilter)
      : assert(requests != null),
        assert(userId != null),
        assert(requestSearchFilter != null);

  @override
  final KtList<RequestSearch> requests;
  @override
  final String userId;
  @override
  final RequestSearchFilter requestSearchFilter;

  @override
  String toString() {
    return 'RequestSearchWatcherState.loadSuccess(requests: $requests, userId: $userId, requestSearchFilter: $requestSearchFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.requestSearchFilter, requestSearchFilter) ||
                const DeepCollectionEquality()
                    .equals(other.requestSearchFilter, requestSearchFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requests) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(requestSearchFilter);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required
        TResult loadSuccess(KtList<RequestSearch> requests, String userId,
            RequestSearchFilter requestSearchFilter),
    @required TResult loadFailure(RequestFailure requestFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(requests, userId, requestSearchFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<RequestSearch> requests, String userId,
        RequestSearchFilter requestSearchFilter),
    TResult loadFailure(RequestFailure requestFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(requests, userId, requestSearchFilter);
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

abstract class LoadSuccess implements RequestSearchWatcherState {
  const factory LoadSuccess(KtList<RequestSearch> requests, String userId,
      RequestSearchFilter requestSearchFilter) = _$LoadSuccess;

  KtList<RequestSearch> get requests;

  String get userId;

  RequestSearchFilter get requestSearchFilter;

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
    extends _$RequestSearchWatcherStateCopyWithImpl<$Res>
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
    return 'RequestSearchWatcherState.loadFailure(requestFailure: $requestFailure)';
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
    @required
        TResult loadSuccess(KtList<RequestSearch> requests, String userId,
            RequestSearchFilter requestSearchFilter),
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
    TResult loadSuccess(KtList<RequestSearch> requests, String userId,
        RequestSearchFilter requestSearchFilter),
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

abstract class LoadFailure implements RequestSearchWatcherState {
  const factory LoadFailure(RequestFailure requestFailure) = _$LoadFailure;

  RequestFailure get requestFailure;

  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
