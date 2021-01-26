// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'info_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InfoWatcherEventTearOff {
  const _$InfoWatcherEventTearOff();

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
  _WatchInfoSearchStarted watchInfoSearchStarted() {
    return const _WatchInfoSearchStarted();
  }

// ignore: unused_element
  _WatchInfoSearchFiltered watchInfoSearchFiltered(String query) {
    return _WatchInfoSearchFiltered(
      query,
    );
  }

// ignore: unused_element
  _InfoReceived infoReceived(Either<InfoFailure, Info> failureOrInfo) {
    return _InfoReceived(
      failureOrInfo,
    );
  }

// ignore: unused_element
  _InfoListReceived infoListReceived(
      Either<InfoFailure, KtList<Info>> failureOrInfo) {
    return _InfoListReceived(
      failureOrInfo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InfoWatcherEvent = _$InfoWatcherEventTearOff();

/// @nodoc
mixin _$InfoWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required TResult watchInfoSearchStarted(),
    @required TResult watchInfoSearchFiltered(String query),
    @required TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    @required
        TResult infoListReceived(
            Either<InfoFailure, KtList<Info>> failureOrInfo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult watchInfoSearchStarted(),
    TResult watchInfoSearchFiltered(String query),
    TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    TResult infoListReceived(Either<InfoFailure, KtList<Info>> failureOrInfo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    @required TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    @required TResult infoReceived(_InfoReceived value),
    @required TResult infoListReceived(_InfoListReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    TResult infoReceived(_InfoReceived value),
    TResult infoListReceived(_InfoListReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InfoWatcherEventCopyWith<$Res> {
  factory $InfoWatcherEventCopyWith(
          InfoWatcherEvent value, $Res Function(InfoWatcherEvent) then) =
      _$InfoWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InfoWatcherEventCopyWithImpl<$Res>
    implements $InfoWatcherEventCopyWith<$Res> {
  _$InfoWatcherEventCopyWithImpl(this._value, this._then);

  final InfoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(InfoWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$InfoWatcherEventCopyWithImpl<$Res>
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
    return 'InfoWatcherEvent.watchAllStarted()';
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
    @required TResult watchInfoSearchStarted(),
    @required TResult watchInfoSearchFiltered(String query),
    @required TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    @required
        TResult infoListReceived(
            Either<InfoFailure, KtList<Info>> failureOrInfo),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult watchInfoSearchStarted(),
    TResult watchInfoSearchFiltered(String query),
    TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    TResult infoListReceived(Either<InfoFailure, KtList<Info>> failureOrInfo),
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
    @required TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    @required TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    @required TResult infoReceived(_InfoReceived value),
    @required TResult infoListReceived(_InfoListReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    TResult infoReceived(_InfoReceived value),
    TResult infoListReceived(_InfoListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements InfoWatcherEvent {
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
    extends _$InfoWatcherEventCopyWithImpl<$Res>
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
    return 'InfoWatcherEvent.watchOtherUserStarted(userId: $userId)';
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
    @required TResult watchInfoSearchStarted(),
    @required TResult watchInfoSearchFiltered(String query),
    @required TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    @required
        TResult infoListReceived(
            Either<InfoFailure, KtList<Info>> failureOrInfo),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return watchOtherUserStarted(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult watchInfoSearchStarted(),
    TResult watchInfoSearchFiltered(String query),
    TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    TResult infoListReceived(Either<InfoFailure, KtList<Info>> failureOrInfo),
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
    @required TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    @required TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    @required TResult infoReceived(_InfoReceived value),
    @required TResult infoListReceived(_InfoListReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return watchOtherUserStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    TResult infoReceived(_InfoReceived value),
    TResult infoListReceived(_InfoListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchOtherUserStarted != null) {
      return watchOtherUserStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchOtherUserStarted implements InfoWatcherEvent {
  const factory _WatchOtherUserStarted(String userId) =
      _$_WatchOtherUserStarted;

  String get userId;
  @JsonKey(ignore: true)
  _$WatchOtherUserStartedCopyWith<_WatchOtherUserStarted> get copyWith;
}

/// @nodoc
abstract class _$WatchInfoSearchStartedCopyWith<$Res> {
  factory _$WatchInfoSearchStartedCopyWith(_WatchInfoSearchStarted value,
          $Res Function(_WatchInfoSearchStarted) then) =
      __$WatchInfoSearchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchInfoSearchStartedCopyWithImpl<$Res>
    extends _$InfoWatcherEventCopyWithImpl<$Res>
    implements _$WatchInfoSearchStartedCopyWith<$Res> {
  __$WatchInfoSearchStartedCopyWithImpl(_WatchInfoSearchStarted _value,
      $Res Function(_WatchInfoSearchStarted) _then)
      : super(_value, (v) => _then(v as _WatchInfoSearchStarted));

  @override
  _WatchInfoSearchStarted get _value => super._value as _WatchInfoSearchStarted;
}

/// @nodoc
class _$_WatchInfoSearchStarted implements _WatchInfoSearchStarted {
  const _$_WatchInfoSearchStarted();

  @override
  String toString() {
    return 'InfoWatcherEvent.watchInfoSearchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchInfoSearchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required TResult watchInfoSearchStarted(),
    @required TResult watchInfoSearchFiltered(String query),
    @required TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    @required
        TResult infoListReceived(
            Either<InfoFailure, KtList<Info>> failureOrInfo),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return watchInfoSearchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult watchInfoSearchStarted(),
    TResult watchInfoSearchFiltered(String query),
    TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    TResult infoListReceived(Either<InfoFailure, KtList<Info>> failureOrInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchInfoSearchStarted != null) {
      return watchInfoSearchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    @required TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    @required TResult infoReceived(_InfoReceived value),
    @required TResult infoListReceived(_InfoListReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return watchInfoSearchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    TResult infoReceived(_InfoReceived value),
    TResult infoListReceived(_InfoListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchInfoSearchStarted != null) {
      return watchInfoSearchStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchInfoSearchStarted implements InfoWatcherEvent {
  const factory _WatchInfoSearchStarted() = _$_WatchInfoSearchStarted;
}

/// @nodoc
abstract class _$WatchInfoSearchFilteredCopyWith<$Res> {
  factory _$WatchInfoSearchFilteredCopyWith(_WatchInfoSearchFiltered value,
          $Res Function(_WatchInfoSearchFiltered) then) =
      __$WatchInfoSearchFilteredCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$WatchInfoSearchFilteredCopyWithImpl<$Res>
    extends _$InfoWatcherEventCopyWithImpl<$Res>
    implements _$WatchInfoSearchFilteredCopyWith<$Res> {
  __$WatchInfoSearchFilteredCopyWithImpl(_WatchInfoSearchFiltered _value,
      $Res Function(_WatchInfoSearchFiltered) _then)
      : super(_value, (v) => _then(v as _WatchInfoSearchFiltered));

  @override
  _WatchInfoSearchFiltered get _value =>
      super._value as _WatchInfoSearchFiltered;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_WatchInfoSearchFiltered(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_WatchInfoSearchFiltered implements _WatchInfoSearchFiltered {
  const _$_WatchInfoSearchFiltered(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'InfoWatcherEvent.watchInfoSearchFiltered(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchInfoSearchFiltered &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$WatchInfoSearchFilteredCopyWith<_WatchInfoSearchFiltered> get copyWith =>
      __$WatchInfoSearchFilteredCopyWithImpl<_WatchInfoSearchFiltered>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required TResult watchInfoSearchStarted(),
    @required TResult watchInfoSearchFiltered(String query),
    @required TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    @required
        TResult infoListReceived(
            Either<InfoFailure, KtList<Info>> failureOrInfo),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return watchInfoSearchFiltered(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult watchInfoSearchStarted(),
    TResult watchInfoSearchFiltered(String query),
    TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    TResult infoListReceived(Either<InfoFailure, KtList<Info>> failureOrInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchInfoSearchFiltered != null) {
      return watchInfoSearchFiltered(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    @required TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    @required TResult infoReceived(_InfoReceived value),
    @required TResult infoListReceived(_InfoListReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return watchInfoSearchFiltered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    TResult infoReceived(_InfoReceived value),
    TResult infoListReceived(_InfoListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchInfoSearchFiltered != null) {
      return watchInfoSearchFiltered(this);
    }
    return orElse();
  }
}

abstract class _WatchInfoSearchFiltered implements InfoWatcherEvent {
  const factory _WatchInfoSearchFiltered(String query) =
      _$_WatchInfoSearchFiltered;

  String get query;
  @JsonKey(ignore: true)
  _$WatchInfoSearchFilteredCopyWith<_WatchInfoSearchFiltered> get copyWith;
}

/// @nodoc
abstract class _$InfoReceivedCopyWith<$Res> {
  factory _$InfoReceivedCopyWith(
          _InfoReceived value, $Res Function(_InfoReceived) then) =
      __$InfoReceivedCopyWithImpl<$Res>;
  $Res call({Either<InfoFailure, Info> failureOrInfo});
}

/// @nodoc
class __$InfoReceivedCopyWithImpl<$Res>
    extends _$InfoWatcherEventCopyWithImpl<$Res>
    implements _$InfoReceivedCopyWith<$Res> {
  __$InfoReceivedCopyWithImpl(
      _InfoReceived _value, $Res Function(_InfoReceived) _then)
      : super(_value, (v) => _then(v as _InfoReceived));

  @override
  _InfoReceived get _value => super._value as _InfoReceived;

  @override
  $Res call({
    Object failureOrInfo = freezed,
  }) {
    return _then(_InfoReceived(
      failureOrInfo == freezed
          ? _value.failureOrInfo
          : failureOrInfo as Either<InfoFailure, Info>,
    ));
  }
}

/// @nodoc
class _$_InfoReceived implements _InfoReceived {
  const _$_InfoReceived(this.failureOrInfo) : assert(failureOrInfo != null);

  @override
  final Either<InfoFailure, Info> failureOrInfo;

  @override
  String toString() {
    return 'InfoWatcherEvent.infoReceived(failureOrInfo: $failureOrInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoReceived &&
            (identical(other.failureOrInfo, failureOrInfo) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrInfo, failureOrInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrInfo);

  @JsonKey(ignore: true)
  @override
  _$InfoReceivedCopyWith<_InfoReceived> get copyWith =>
      __$InfoReceivedCopyWithImpl<_InfoReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required TResult watchInfoSearchStarted(),
    @required TResult watchInfoSearchFiltered(String query),
    @required TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    @required
        TResult infoListReceived(
            Either<InfoFailure, KtList<Info>> failureOrInfo),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return infoReceived(failureOrInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult watchInfoSearchStarted(),
    TResult watchInfoSearchFiltered(String query),
    TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    TResult infoListReceived(Either<InfoFailure, KtList<Info>> failureOrInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (infoReceived != null) {
      return infoReceived(failureOrInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    @required TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    @required TResult infoReceived(_InfoReceived value),
    @required TResult infoListReceived(_InfoListReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return infoReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    TResult infoReceived(_InfoReceived value),
    TResult infoListReceived(_InfoListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (infoReceived != null) {
      return infoReceived(this);
    }
    return orElse();
  }
}

abstract class _InfoReceived implements InfoWatcherEvent {
  const factory _InfoReceived(Either<InfoFailure, Info> failureOrInfo) =
      _$_InfoReceived;

  Either<InfoFailure, Info> get failureOrInfo;
  @JsonKey(ignore: true)
  _$InfoReceivedCopyWith<_InfoReceived> get copyWith;
}

/// @nodoc
abstract class _$InfoListReceivedCopyWith<$Res> {
  factory _$InfoListReceivedCopyWith(
          _InfoListReceived value, $Res Function(_InfoListReceived) then) =
      __$InfoListReceivedCopyWithImpl<$Res>;
  $Res call({Either<InfoFailure, KtList<Info>> failureOrInfo});
}

/// @nodoc
class __$InfoListReceivedCopyWithImpl<$Res>
    extends _$InfoWatcherEventCopyWithImpl<$Res>
    implements _$InfoListReceivedCopyWith<$Res> {
  __$InfoListReceivedCopyWithImpl(
      _InfoListReceived _value, $Res Function(_InfoListReceived) _then)
      : super(_value, (v) => _then(v as _InfoListReceived));

  @override
  _InfoListReceived get _value => super._value as _InfoListReceived;

  @override
  $Res call({
    Object failureOrInfo = freezed,
  }) {
    return _then(_InfoListReceived(
      failureOrInfo == freezed
          ? _value.failureOrInfo
          : failureOrInfo as Either<InfoFailure, KtList<Info>>,
    ));
  }
}

/// @nodoc
class _$_InfoListReceived implements _InfoListReceived {
  const _$_InfoListReceived(this.failureOrInfo) : assert(failureOrInfo != null);

  @override
  final Either<InfoFailure, KtList<Info>> failureOrInfo;

  @override
  String toString() {
    return 'InfoWatcherEvent.infoListReceived(failureOrInfo: $failureOrInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoListReceived &&
            (identical(other.failureOrInfo, failureOrInfo) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrInfo, failureOrInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrInfo);

  @JsonKey(ignore: true)
  @override
  _$InfoListReceivedCopyWith<_InfoListReceived> get copyWith =>
      __$InfoListReceivedCopyWithImpl<_InfoListReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchOtherUserStarted(String userId),
    @required TResult watchInfoSearchStarted(),
    @required TResult watchInfoSearchFiltered(String query),
    @required TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    @required
        TResult infoListReceived(
            Either<InfoFailure, KtList<Info>> failureOrInfo),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return infoListReceived(failureOrInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchOtherUserStarted(String userId),
    TResult watchInfoSearchStarted(),
    TResult watchInfoSearchFiltered(String query),
    TResult infoReceived(Either<InfoFailure, Info> failureOrInfo),
    TResult infoListReceived(Either<InfoFailure, KtList<Info>> failureOrInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (infoListReceived != null) {
      return infoListReceived(failureOrInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    @required TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    @required TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    @required TResult infoReceived(_InfoReceived value),
    @required TResult infoListReceived(_InfoListReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchOtherUserStarted != null);
    assert(watchInfoSearchStarted != null);
    assert(watchInfoSearchFiltered != null);
    assert(infoReceived != null);
    assert(infoListReceived != null);
    return infoListReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchOtherUserStarted(_WatchOtherUserStarted value),
    TResult watchInfoSearchStarted(_WatchInfoSearchStarted value),
    TResult watchInfoSearchFiltered(_WatchInfoSearchFiltered value),
    TResult infoReceived(_InfoReceived value),
    TResult infoListReceived(_InfoListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (infoListReceived != null) {
      return infoListReceived(this);
    }
    return orElse();
  }
}

abstract class _InfoListReceived implements InfoWatcherEvent {
  const factory _InfoListReceived(
      Either<InfoFailure, KtList<Info>> failureOrInfo) = _$_InfoListReceived;

  Either<InfoFailure, KtList<Info>> get failureOrInfo;
  @JsonKey(ignore: true)
  _$InfoListReceivedCopyWith<_InfoListReceived> get copyWith;
}

/// @nodoc
class _$InfoWatcherStateTearOff {
  const _$InfoWatcherStateTearOff();

// ignore: unused_element
  _InfoWatcherState call() {
    return const _InfoWatcherState();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(Info info) {
    return LoadSuccess(
      info,
    );
  }

// ignore: unused_element
  LoadListSuccess loadListSuccess(KtList<Info> info, String userId) {
    return LoadListSuccess(
      info,
      userId,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(InfoFailure infoFailure) {
    return LoadFailure(
      infoFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InfoWatcherState = _$InfoWatcherStateTearOff();

/// @nodoc
mixin _$InfoWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Info info),
    @required TResult loadListSuccess(KtList<Info> info, String userId),
    @required TResult loadFailure(InfoFailure infoFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loadInProgress(),
    TResult loadSuccess(Info info),
    TResult loadListSuccess(KtList<Info> info, String userId),
    TResult loadFailure(InfoFailure infoFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadListSuccess(LoadListSuccess value),
    @required TResult loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadListSuccess(LoadListSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InfoWatcherStateCopyWith<$Res> {
  factory $InfoWatcherStateCopyWith(
          InfoWatcherState value, $Res Function(InfoWatcherState) then) =
      _$InfoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InfoWatcherStateCopyWithImpl<$Res>
    implements $InfoWatcherStateCopyWith<$Res> {
  _$InfoWatcherStateCopyWithImpl(this._value, this._then);

  final InfoWatcherState _value;
  // ignore: unused_field
  final $Res Function(InfoWatcherState) _then;
}

/// @nodoc
abstract class _$InfoWatcherStateCopyWith<$Res> {
  factory _$InfoWatcherStateCopyWith(
          _InfoWatcherState value, $Res Function(_InfoWatcherState) then) =
      __$InfoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InfoWatcherStateCopyWithImpl<$Res>
    extends _$InfoWatcherStateCopyWithImpl<$Res>
    implements _$InfoWatcherStateCopyWith<$Res> {
  __$InfoWatcherStateCopyWithImpl(
      _InfoWatcherState _value, $Res Function(_InfoWatcherState) _then)
      : super(_value, (v) => _then(v as _InfoWatcherState));

  @override
  _InfoWatcherState get _value => super._value as _InfoWatcherState;
}

/// @nodoc
class _$_InfoWatcherState implements _InfoWatcherState {
  const _$_InfoWatcherState();

  @override
  String toString() {
    return 'InfoWatcherState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InfoWatcherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Info info),
    @required TResult loadListSuccess(KtList<Info> info, String userId),
    @required TResult loadFailure(InfoFailure infoFailure),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loadInProgress(),
    TResult loadSuccess(Info info),
    TResult loadListSuccess(KtList<Info> info, String userId),
    TResult loadFailure(InfoFailure infoFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadListSuccess(LoadListSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadListSuccess(LoadListSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _InfoWatcherState implements InfoWatcherState {
  const factory _InfoWatcherState() = _$_InfoWatcherState;
}

/// @nodoc
abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$InfoWatcherStateCopyWithImpl<$Res>
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
    return 'InfoWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Info info),
    @required TResult loadListSuccess(KtList<Info> info, String userId),
    @required TResult loadFailure(InfoFailure infoFailure),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loadInProgress(),
    TResult loadSuccess(Info info),
    TResult loadListSuccess(KtList<Info> info, String userId),
    TResult loadFailure(InfoFailure infoFailure),
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
  TResult map<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadListSuccess(LoadListSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadListSuccess(LoadListSuccess value),
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

abstract class DataTransferInProgress implements InfoWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Info info});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$InfoWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(LoadSuccess(
      info == freezed ? _value.info : info as Info,
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
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.info) : assert(info != null);

  @override
  final Info info;

  @override
  String toString() {
    return 'InfoWatcherState.loadSuccess(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Info info),
    @required TResult loadListSuccess(KtList<Info> info, String userId),
    @required TResult loadFailure(InfoFailure infoFailure),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loadInProgress(),
    TResult loadSuccess(Info info),
    TResult loadListSuccess(KtList<Info> info, String userId),
    TResult loadFailure(InfoFailure infoFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadListSuccess(LoadListSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadListSuccess(LoadListSuccess value),
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

abstract class LoadSuccess implements InfoWatcherState {
  const factory LoadSuccess(Info info) = _$LoadSuccess;

  Info get info;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadListSuccessCopyWith<$Res> {
  factory $LoadListSuccessCopyWith(
          LoadListSuccess value, $Res Function(LoadListSuccess) then) =
      _$LoadListSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Info> info, String userId});
}

/// @nodoc
class _$LoadListSuccessCopyWithImpl<$Res>
    extends _$InfoWatcherStateCopyWithImpl<$Res>
    implements $LoadListSuccessCopyWith<$Res> {
  _$LoadListSuccessCopyWithImpl(
      LoadListSuccess _value, $Res Function(LoadListSuccess) _then)
      : super(_value, (v) => _then(v as LoadListSuccess));

  @override
  LoadListSuccess get _value => super._value as LoadListSuccess;

  @override
  $Res call({
    Object info = freezed,
    Object userId = freezed,
  }) {
    return _then(LoadListSuccess(
      info == freezed ? _value.info : info as KtList<Info>,
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$LoadListSuccess implements LoadListSuccess {
  const _$LoadListSuccess(this.info, this.userId)
      : assert(info != null),
        assert(userId != null);

  @override
  final KtList<Info> info;
  @override
  final String userId;

  @override
  String toString() {
    return 'InfoWatcherState.loadListSuccess(info: $info, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadListSuccess &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $LoadListSuccessCopyWith<LoadListSuccess> get copyWith =>
      _$LoadListSuccessCopyWithImpl<LoadListSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Info info),
    @required TResult loadListSuccess(KtList<Info> info, String userId),
    @required TResult loadFailure(InfoFailure infoFailure),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return loadListSuccess(info, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loadInProgress(),
    TResult loadSuccess(Info info),
    TResult loadListSuccess(KtList<Info> info, String userId),
    TResult loadFailure(InfoFailure infoFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadListSuccess != null) {
      return loadListSuccess(info, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadListSuccess(LoadListSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return loadListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadListSuccess(LoadListSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadListSuccess != null) {
      return loadListSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadListSuccess implements InfoWatcherState {
  const factory LoadListSuccess(KtList<Info> info, String userId) =
      _$LoadListSuccess;

  KtList<Info> get info;
  String get userId;
  @JsonKey(ignore: true)
  $LoadListSuccessCopyWith<LoadListSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({InfoFailure infoFailure});

  $InfoFailureCopyWith<$Res> get infoFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$InfoWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object infoFailure = freezed,
  }) {
    return _then(LoadFailure(
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
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.infoFailure) : assert(infoFailure != null);

  @override
  final InfoFailure infoFailure;

  @override
  String toString() {
    return 'InfoWatcherState.loadFailure(infoFailure: $infoFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.infoFailure, infoFailure) ||
                const DeepCollectionEquality()
                    .equals(other.infoFailure, infoFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(infoFailure);

  @JsonKey(ignore: true)
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Info info),
    @required TResult loadListSuccess(KtList<Info> info, String userId),
    @required TResult loadFailure(InfoFailure infoFailure),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return loadFailure(infoFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult loadInProgress(),
    TResult loadSuccess(Info info),
    TResult loadListSuccess(KtList<Info> info, String userId),
    TResult loadFailure(InfoFailure infoFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(infoFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    @required TResult loadInProgress(DataTransferInProgress value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadListSuccess(LoadListSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert($default != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadListSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_InfoWatcherState value), {
    TResult loadInProgress(DataTransferInProgress value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadListSuccess(LoadListSuccess value),
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

abstract class LoadFailure implements InfoWatcherState {
  const factory LoadFailure(InfoFailure infoFailure) = _$LoadFailure;

  InfoFailure get infoFailure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
