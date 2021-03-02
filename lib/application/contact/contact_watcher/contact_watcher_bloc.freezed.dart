// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactWatcherEventTearOff {
  const _$ContactWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _ContactsReceived contactsReceived(
      Either<ContactFailure, KtList<Contact>> failureOrContacts) {
    return _ContactsReceived(
      failureOrContacts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContactWatcherEvent = _$ContactWatcherEventTearOff();

/// @nodoc
mixin _$ContactWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult contactsReceived(
            Either<ContactFailure, KtList<Contact>> failureOrContacts),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult contactsReceived(
        Either<ContactFailure, KtList<Contact>> failureOrContacts),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult contactsReceived(_ContactsReceived value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult contactsReceived(_ContactsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ContactWatcherEventCopyWith<$Res> {
  factory $ContactWatcherEventCopyWith(
          ContactWatcherEvent value, $Res Function(ContactWatcherEvent) then) =
      _$ContactWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactWatcherEventCopyWithImpl<$Res>
    implements $ContactWatcherEventCopyWith<$Res> {
  _$ContactWatcherEventCopyWithImpl(this._value, this._then);

  final ContactWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(ContactWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
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
    return 'ContactWatcherEvent.watchAllStarted()';
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
    @required
        TResult contactsReceived(
            Either<ContactFailure, KtList<Contact>> failureOrContacts),
  }) {
    assert(watchAllStarted != null);
    assert(contactsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult contactsReceived(
        Either<ContactFailure, KtList<Contact>> failureOrContacts),
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
    @required TResult contactsReceived(_ContactsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(contactsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult contactsReceived(_ContactsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ContactWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$ContactsReceivedCopyWith<$Res> {
  factory _$ContactsReceivedCopyWith(
          _ContactsReceived value, $Res Function(_ContactsReceived) then) =
      __$ContactsReceivedCopyWithImpl<$Res>;

  $Res call({Either<ContactFailure, KtList<Contact>> failureOrContacts});
}

/// @nodoc
class __$ContactsReceivedCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
    implements _$ContactsReceivedCopyWith<$Res> {
  __$ContactsReceivedCopyWithImpl(
      _ContactsReceived _value, $Res Function(_ContactsReceived) _then)
      : super(_value, (v) => _then(v as _ContactsReceived));

  @override
  _ContactsReceived get _value => super._value as _ContactsReceived;

  @override
  $Res call({
    Object failureOrContacts = freezed,
  }) {
    return _then(_ContactsReceived(
      failureOrContacts == freezed
          ? _value.failureOrContacts
          : failureOrContacts as Either<ContactFailure, KtList<Contact>>,
    ));
  }
}

/// @nodoc
class _$_ContactsReceived implements _ContactsReceived {
  const _$_ContactsReceived(this.failureOrContacts)
      : assert(failureOrContacts != null);

  @override
  final Either<ContactFailure, KtList<Contact>> failureOrContacts;

  @override
  String toString() {
    return 'ContactWatcherEvent.contactsReceived(failureOrContacts: $failureOrContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactsReceived &&
            (identical(other.failureOrContacts, failureOrContacts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrContacts, failureOrContacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrContacts);

  @JsonKey(ignore: true)
  @override
  _$ContactsReceivedCopyWith<_ContactsReceived> get copyWith =>
      __$ContactsReceivedCopyWithImpl<_ContactsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult contactsReceived(
            Either<ContactFailure, KtList<Contact>> failureOrContacts),
  }) {
    assert(watchAllStarted != null);
    assert(contactsReceived != null);
    return contactsReceived(failureOrContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult contactsReceived(
        Either<ContactFailure, KtList<Contact>> failureOrContacts),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (contactsReceived != null) {
      return contactsReceived(failureOrContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult contactsReceived(_ContactsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(contactsReceived != null);
    return contactsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult contactsReceived(_ContactsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (contactsReceived != null) {
      return contactsReceived(this);
    }
    return orElse();
  }
}

abstract class _ContactsReceived implements ContactWatcherEvent {
  const factory _ContactsReceived(
          Either<ContactFailure, KtList<Contact>> failureOrContacts) =
      _$_ContactsReceived;

  Either<ContactFailure, KtList<Contact>> get failureOrContacts;

  @JsonKey(ignore: true)
  _$ContactsReceivedCopyWith<_ContactsReceived> get copyWith;
}

/// @nodoc
class _$ContactWatcherStateTearOff {
  const _$ContactWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Contact> contacts) {
    return _LoadSuccess(
      contacts,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ContactFailure contactFailure) {
    return _LoadFailure(
      contactFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContactWatcherState = _$ContactWatcherStateTearOff();

/// @nodoc
mixin _$ContactWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Contact> contacts),
    @required TResult loadFailure(ContactFailure contactFailure),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Contact> contacts),
    TResult loadFailure(ContactFailure contactFailure),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ContactWatcherStateCopyWith<$Res> {
  factory $ContactWatcherStateCopyWith(
          ContactWatcherState value, $Res Function(ContactWatcherState) then) =
      _$ContactWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactWatcherStateCopyWithImpl<$Res>
    implements $ContactWatcherStateCopyWith<$Res> {
  _$ContactWatcherStateCopyWithImpl(this._value, this._then);

  final ContactWatcherState _value;

  // ignore: unused_field
  final $Res Function(ContactWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ContactWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Contact> contacts),
    @required TResult loadFailure(ContactFailure contactFailure),
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
    TResult loadSuccess(KtList<Contact> contacts),
    TResult loadFailure(ContactFailure contactFailure),
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
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
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
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ContactWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ContactWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Contact> contacts),
    @required TResult loadFailure(ContactFailure contactFailure),
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
    TResult loadSuccess(KtList<Contact> contacts),
    TResult loadFailure(ContactFailure contactFailure),
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
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
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
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ContactWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;

  $Res call({KtList<Contact> contacts});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object contacts = freezed,
  }) {
    return _then(_LoadSuccess(
      contacts == freezed ? _value.contacts : contacts as KtList<Contact>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.contacts) : assert(contacts != null);

  @override
  final KtList<Contact> contacts;

  @override
  String toString() {
    return 'ContactWatcherState.loadSuccess(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contacts);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Contact> contacts),
    @required TResult loadFailure(ContactFailure contactFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Contact> contacts),
    TResult loadFailure(ContactFailure contactFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
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
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ContactWatcherState {
  const factory _LoadSuccess(KtList<Contact> contacts) = _$_LoadSuccess;

  KtList<Contact> get contacts;

  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;

  $Res call({ContactFailure contactFailure});

  $ContactFailureCopyWith<$Res> get contactFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object contactFailure = freezed,
  }) {
    return _then(_LoadFailure(
      contactFailure == freezed
          ? _value.contactFailure
          : contactFailure as ContactFailure,
    ));
  }

  @override
  $ContactFailureCopyWith<$Res> get contactFailure {
    if (_value.contactFailure == null) {
      return null;
    }
    return $ContactFailureCopyWith<$Res>(_value.contactFailure, (value) {
      return _then(_value.copyWith(contactFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.contactFailure) : assert(contactFailure != null);

  @override
  final ContactFailure contactFailure;

  @override
  String toString() {
    return 'ContactWatcherState.loadFailure(contactFailure: $contactFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.contactFailure, contactFailure) ||
                const DeepCollectionEquality()
                    .equals(other.contactFailure, contactFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contactFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Contact> contacts),
    @required TResult loadFailure(ContactFailure contactFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(contactFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Contact> contacts),
    TResult loadFailure(ContactFailure contactFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(contactFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
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
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ContactWatcherState {
  const factory _LoadFailure(ContactFailure contactFailure) = _$_LoadFailure;

  ContactFailure get contactFailure;

  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
