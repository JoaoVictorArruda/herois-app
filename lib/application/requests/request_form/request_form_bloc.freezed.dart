// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestFormEventTearOff {
  const _$RequestFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Request> initialRequestOption) {
    return _Initialized(
      initialRequestOption,
    );
  }

// ignore: unused_element
  _BloodTypeChanged bloodTypeChanged(String bloodType) {
    return _BloodTypeChanged(
      bloodType,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _LocalizationChanged localizationChanged(
      String city, String lat, String long) {
    return _LocalizationChanged(
      city,
      lat,
      long,
    );
  }

// ignore: unused_element
  _IsOpenChanged isOpenChanged(bool isOpen) {
    return _IsOpenChanged(
      isOpen,
    );
  }

// ignore: unused_element
  _PhotoUrlChanged photoUrlChanged(String photoUrl) {
    return _PhotoUrlChanged(
      photoUrl,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $RequestFormEvent = _$RequestFormEventTearOff();

/// @nodoc
mixin _$RequestFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Request> initialRequestOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult isOpenChanged(bool isOpen),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult saved(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Request> initialRequestOption),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult isOpenChanged(bool isOpen),
    TResult photoUrlChanged(String photoUrl),
    TResult saved(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult isOpenChanged(_IsOpenChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult saved(_Saved value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult isOpenChanged(_IsOpenChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RequestFormEventCopyWith<$Res> {
  factory $RequestFormEventCopyWith(
          RequestFormEvent value, $Res Function(RequestFormEvent) then) =
      _$RequestFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFormEventCopyWithImpl<$Res>
    implements $RequestFormEventCopyWith<$Res> {
  _$RequestFormEventCopyWithImpl(this._value, this._then);

  final RequestFormEvent _value;

  // ignore: unused_field
  final $Res Function(RequestFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;

  $Res call({Option<Request> initialRequestOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialRequestOption = freezed,
  }) {
    return _then(_Initialized(
      initialRequestOption == freezed
          ? _value.initialRequestOption
          : initialRequestOption as Option<Request>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialRequestOption)
      : assert(initialRequestOption != null);

  @override
  final Option<Request> initialRequestOption;

  @override
  String toString() {
    return 'RequestFormEvent.initialized(initialRequestOption: $initialRequestOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialRequestOption, initialRequestOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialRequestOption, initialRequestOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialRequestOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Request> initialRequestOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult isOpenChanged(bool isOpen),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return initialized(initialRequestOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Request> initialRequestOption),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult isOpenChanged(bool isOpen),
    TResult photoUrlChanged(String photoUrl),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialRequestOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult isOpenChanged(_IsOpenChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult isOpenChanged(_IsOpenChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
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

abstract class _Initialized implements RequestFormEvent {
  const factory _Initialized(Option<Request> initialRequestOption) =
      _$_Initialized;

  Option<Request> get initialRequestOption;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$BloodTypeChangedCopyWith<$Res> {
  factory _$BloodTypeChangedCopyWith(
          _BloodTypeChanged value, $Res Function(_BloodTypeChanged) then) =
      __$BloodTypeChangedCopyWithImpl<$Res>;

  $Res call({String bloodType});
}

/// @nodoc
class __$BloodTypeChangedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$BloodTypeChangedCopyWith<$Res> {
  __$BloodTypeChangedCopyWithImpl(
      _BloodTypeChanged _value, $Res Function(_BloodTypeChanged) _then)
      : super(_value, (v) => _then(v as _BloodTypeChanged));

  @override
  _BloodTypeChanged get _value => super._value as _BloodTypeChanged;

  @override
  $Res call({
    Object bloodType = freezed,
  }) {
    return _then(_BloodTypeChanged(
      bloodType == freezed ? _value.bloodType : bloodType as String,
    ));
  }
}

/// @nodoc
class _$_BloodTypeChanged implements _BloodTypeChanged {
  const _$_BloodTypeChanged(this.bloodType) : assert(bloodType != null);

  @override
  final String bloodType;

  @override
  String toString() {
    return 'RequestFormEvent.bloodTypeChanged(bloodType: $bloodType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BloodTypeChanged &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bloodType);

  @JsonKey(ignore: true)
  @override
  _$BloodTypeChangedCopyWith<_BloodTypeChanged> get copyWith =>
      __$BloodTypeChangedCopyWithImpl<_BloodTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Request> initialRequestOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult isOpenChanged(bool isOpen),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return bloodTypeChanged(bloodType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Request> initialRequestOption),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult isOpenChanged(bool isOpen),
    TResult photoUrlChanged(String photoUrl),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bloodTypeChanged != null) {
      return bloodTypeChanged(bloodType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult isOpenChanged(_IsOpenChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return bloodTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult isOpenChanged(_IsOpenChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bloodTypeChanged != null) {
      return bloodTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _BloodTypeChanged implements RequestFormEvent {
  const factory _BloodTypeChanged(String bloodType) = _$_BloodTypeChanged;

  String get bloodType;

  @JsonKey(ignore: true)
  _$BloodTypeChangedCopyWith<_BloodTypeChanged> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;

  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'RequestFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Request> initialRequestOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult isOpenChanged(bool isOpen),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Request> initialRequestOption),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult isOpenChanged(bool isOpen),
    TResult photoUrlChanged(String photoUrl),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult isOpenChanged(_IsOpenChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult isOpenChanged(_IsOpenChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RequestFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;

  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$LocalizationChangedCopyWith<$Res> {
  factory _$LocalizationChangedCopyWith(_LocalizationChanged value,
          $Res Function(_LocalizationChanged) then) =
      __$LocalizationChangedCopyWithImpl<$Res>;

  $Res call({String city, String lat, String long});
}

/// @nodoc
class __$LocalizationChangedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$LocalizationChangedCopyWith<$Res> {
  __$LocalizationChangedCopyWithImpl(
      _LocalizationChanged _value, $Res Function(_LocalizationChanged) _then)
      : super(_value, (v) => _then(v as _LocalizationChanged));

  @override
  _LocalizationChanged get _value => super._value as _LocalizationChanged;

  @override
  $Res call({
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
  }) {
    return _then(_LocalizationChanged(
      city == freezed ? _value.city : city as String,
      lat == freezed ? _value.lat : lat as String,
      long == freezed ? _value.long : long as String,
    ));
  }
}

/// @nodoc
class _$_LocalizationChanged implements _LocalizationChanged {
  const _$_LocalizationChanged(this.city, this.lat, this.long)
      : assert(city != null),
        assert(lat != null),
        assert(long != null);

  @override
  final String city;
  @override
  final String lat;
  @override
  final String long;

  @override
  String toString() {
    return 'RequestFormEvent.localizationChanged(city: $city, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalizationChanged &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long);

  @JsonKey(ignore: true)
  @override
  _$LocalizationChangedCopyWith<_LocalizationChanged> get copyWith =>
      __$LocalizationChangedCopyWithImpl<_LocalizationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Request> initialRequestOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult isOpenChanged(bool isOpen),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return localizationChanged(city, lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Request> initialRequestOption),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult isOpenChanged(bool isOpen),
    TResult photoUrlChanged(String photoUrl),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localizationChanged != null) {
      return localizationChanged(city, lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult isOpenChanged(_IsOpenChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return localizationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult isOpenChanged(_IsOpenChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localizationChanged != null) {
      return localizationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocalizationChanged implements RequestFormEvent {
  const factory _LocalizationChanged(String city, String lat, String long) =
      _$_LocalizationChanged;

  String get city;

  String get lat;

  String get long;

  @JsonKey(ignore: true)
  _$LocalizationChangedCopyWith<_LocalizationChanged> get copyWith;
}

/// @nodoc
abstract class _$IsOpenChangedCopyWith<$Res> {
  factory _$IsOpenChangedCopyWith(
          _IsOpenChanged value, $Res Function(_IsOpenChanged) then) =
      __$IsOpenChangedCopyWithImpl<$Res>;

  $Res call({bool isOpen});
}

/// @nodoc
class __$IsOpenChangedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$IsOpenChangedCopyWith<$Res> {
  __$IsOpenChangedCopyWithImpl(
      _IsOpenChanged _value, $Res Function(_IsOpenChanged) _then)
      : super(_value, (v) => _then(v as _IsOpenChanged));

  @override
  _IsOpenChanged get _value => super._value as _IsOpenChanged;

  @override
  $Res call({
    Object isOpen = freezed,
  }) {
    return _then(_IsOpenChanged(
      isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

/// @nodoc
class _$_IsOpenChanged implements _IsOpenChanged {
  const _$_IsOpenChanged(this.isOpen) : assert(isOpen != null);

  @override
  final bool isOpen;

  @override
  String toString() {
    return 'RequestFormEvent.isOpenChanged(isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsOpenChanged &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOpen);

  @JsonKey(ignore: true)
  @override
  _$IsOpenChangedCopyWith<_IsOpenChanged> get copyWith =>
      __$IsOpenChangedCopyWithImpl<_IsOpenChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Request> initialRequestOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult isOpenChanged(bool isOpen),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return isOpenChanged(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Request> initialRequestOption),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult isOpenChanged(bool isOpen),
    TResult photoUrlChanged(String photoUrl),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isOpenChanged != null) {
      return isOpenChanged(isOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult isOpenChanged(_IsOpenChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return isOpenChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult isOpenChanged(_IsOpenChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isOpenChanged != null) {
      return isOpenChanged(this);
    }
    return orElse();
  }
}

abstract class _IsOpenChanged implements RequestFormEvent {
  const factory _IsOpenChanged(bool isOpen) = _$_IsOpenChanged;

  bool get isOpen;

  @JsonKey(ignore: true)
  _$IsOpenChangedCopyWith<_IsOpenChanged> get copyWith;
}

/// @nodoc
abstract class _$PhotoUrlChangedCopyWith<$Res> {
  factory _$PhotoUrlChangedCopyWith(
          _PhotoUrlChanged value, $Res Function(_PhotoUrlChanged) then) =
      __$PhotoUrlChangedCopyWithImpl<$Res>;

  $Res call({String photoUrl});
}

/// @nodoc
class __$PhotoUrlChangedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$PhotoUrlChangedCopyWith<$Res> {
  __$PhotoUrlChangedCopyWithImpl(
      _PhotoUrlChanged _value, $Res Function(_PhotoUrlChanged) _then)
      : super(_value, (v) => _then(v as _PhotoUrlChanged));

  @override
  _PhotoUrlChanged get _value => super._value as _PhotoUrlChanged;

  @override
  $Res call({
    Object photoUrl = freezed,
  }) {
    return _then(_PhotoUrlChanged(
      photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

/// @nodoc
class _$_PhotoUrlChanged implements _PhotoUrlChanged {
  const _$_PhotoUrlChanged(this.photoUrl) : assert(photoUrl != null);

  @override
  final String photoUrl;

  @override
  String toString() {
    return 'RequestFormEvent.photoUrlChanged(photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoUrlChanged &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photoUrl);

  @JsonKey(ignore: true)
  @override
  _$PhotoUrlChangedCopyWith<_PhotoUrlChanged> get copyWith =>
      __$PhotoUrlChangedCopyWithImpl<_PhotoUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Request> initialRequestOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult isOpenChanged(bool isOpen),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return photoUrlChanged(photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Request> initialRequestOption),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult isOpenChanged(bool isOpen),
    TResult photoUrlChanged(String photoUrl),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (photoUrlChanged != null) {
      return photoUrlChanged(photoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult isOpenChanged(_IsOpenChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return photoUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult isOpenChanged(_IsOpenChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (photoUrlChanged != null) {
      return photoUrlChanged(this);
    }
    return orElse();
  }
}

abstract class _PhotoUrlChanged implements RequestFormEvent {
  const factory _PhotoUrlChanged(String photoUrl) = _$_PhotoUrlChanged;

  String get photoUrl;

  @JsonKey(ignore: true)
  _$PhotoUrlChangedCopyWith<_PhotoUrlChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'RequestFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Request> initialRequestOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult isOpenChanged(bool isOpen),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Request> initialRequestOption),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult isOpenChanged(bool isOpen),
    TResult photoUrlChanged(String photoUrl),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult isOpenChanged(_IsOpenChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(isOpenChanged != null);
    assert(photoUrlChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult isOpenChanged(_IsOpenChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
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

abstract class _Saved implements RequestFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$RequestFormStateTearOff {
  const _$RequestFormStateTearOff();

// ignore: unused_element
  _RequestFormState call(
      {@required
          Request request,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption}) {
    return _RequestFormState(
      request: request,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestFormState = _$RequestFormStateTearOff();

/// @nodoc
mixin _$RequestFormState {
  Request get request;

  bool get showErrorMessages;

  bool get isEditing;

  bool get isSaving;

  Option<Either<RequestFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $RequestFormStateCopyWith<RequestFormState> get copyWith;
}

/// @nodoc
abstract class $RequestFormStateCopyWith<$Res> {
  factory $RequestFormStateCopyWith(
          RequestFormState value, $Res Function(RequestFormState) then) =
      _$RequestFormStateCopyWithImpl<$Res>;

  $Res call(
      {Request request,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class _$RequestFormStateCopyWithImpl<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  _$RequestFormStateCopyWithImpl(this._value, this._then);

  final RequestFormState _value;

  // ignore: unused_field
  final $Res Function(RequestFormState) _then;

  @override
  $Res call({
    Object request = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed ? _value.request : request as Request,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<RequestFailure, Unit>>,
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
abstract class _$RequestFormStateCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory _$RequestFormStateCopyWith(
          _RequestFormState value, $Res Function(_RequestFormState) then) =
      __$RequestFormStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {Request request,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$RequestFormStateCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements _$RequestFormStateCopyWith<$Res> {
  __$RequestFormStateCopyWithImpl(
      _RequestFormState _value, $Res Function(_RequestFormState) _then)
      : super(_value, (v) => _then(v as _RequestFormState));

  @override
  _RequestFormState get _value => super._value as _RequestFormState;

  @override
  $Res call({
    Object request = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_RequestFormState(
      request: request == freezed ? _value.request : request as Request,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<RequestFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_RequestFormState implements _RequestFormState {
  const _$_RequestFormState(
      {@required this.request,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(request != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Request request;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'RequestFormState(request: $request, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestFormState &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
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
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RequestFormStateCopyWith<_RequestFormState> get copyWith =>
      __$RequestFormStateCopyWithImpl<_RequestFormState>(this, _$identity);
}

abstract class _RequestFormState implements RequestFormState {
  const factory _RequestFormState(
      {@required
          Request request,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<RequestFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_RequestFormState;

  @override
  Request get request;

  @override
  bool get showErrorMessages;

  @override
  bool get isEditing;

  @override
  bool get isSaving;

  @override
  Option<Either<RequestFailure, Unit>> get saveFailureOrSuccessOption;

  @override
  @JsonKey(ignore: true)
  _$RequestFormStateCopyWith<_RequestFormState> get copyWith;
}
