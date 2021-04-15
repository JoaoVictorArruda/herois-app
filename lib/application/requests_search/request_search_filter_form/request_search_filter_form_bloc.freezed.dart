// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_search_filter_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestSearchFilterFormEventTearOff {
  const _$RequestSearchFilterFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(
      Option<RequestSearchFilter> initialRequestSearchFilterOption) {
    return _Initialized(
      initialRequestSearchFilterOption,
    );
  }

// ignore: unused_element
  _BloodTypeChanged bloodTypeChanged(String bloodType) {
    return _BloodTypeChanged(
      bloodType,
    );
  }

// ignore: unused_element
  _DistanceChanged distanceChanged(String distanceStr) {
    return _DistanceChanged(
      distanceStr,
    );
  }

// ignore: unused_element
  _OnlyCompatibleClicked onlyCompatibleClicked() {
    return const _OnlyCompatibleClicked();
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
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $RequestSearchFilterFormEvent = _$RequestSearchFilterFormEventTearOff();

/// @nodoc
mixin _$RequestSearchFilterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initialized(
            Option<RequestSearchFilter> initialRequestSearchFilterOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult distanceChanged(String distanceStr),
    @required TResult onlyCompatibleClicked(),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(
        Option<RequestSearchFilter> initialRequestSearchFilterOption),
    TResult bloodTypeChanged(String bloodType),
    TResult distanceChanged(String distanceStr),
    TResult onlyCompatibleClicked(),
    TResult localizationChanged(String city, String lat, String long),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult distanceChanged(_DistanceChanged value),
    @required TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult distanceChanged(_DistanceChanged value),
    TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RequestSearchFilterFormEventCopyWith<$Res> {
  factory $RequestSearchFilterFormEventCopyWith(
          RequestSearchFilterFormEvent value,
          $Res Function(RequestSearchFilterFormEvent) then) =
      _$RequestSearchFilterFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestSearchFilterFormEventCopyWithImpl<$Res>
    implements $RequestSearchFilterFormEventCopyWith<$Res> {
  _$RequestSearchFilterFormEventCopyWithImpl(this._value, this._then);

  final RequestSearchFilterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RequestSearchFilterFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<RequestSearchFilter> initialRequestSearchFilterOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$RequestSearchFilterFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialRequestSearchFilterOption = freezed,
  }) {
    return _then(_Initialized(
      initialRequestSearchFilterOption == freezed
          ? _value.initialRequestSearchFilterOption
          : initialRequestSearchFilterOption as Option<RequestSearchFilter>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialRequestSearchFilterOption)
      : assert(initialRequestSearchFilterOption != null);

  @override
  final Option<RequestSearchFilter> initialRequestSearchFilterOption;

  @override
  String toString() {
    return 'RequestSearchFilterFormEvent.initialized(initialRequestSearchFilterOption: $initialRequestSearchFilterOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialRequestSearchFilterOption,
                    initialRequestSearchFilterOption) ||
                const DeepCollectionEquality().equals(
                    other.initialRequestSearchFilterOption,
                    initialRequestSearchFilterOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialRequestSearchFilterOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initialized(
            Option<RequestSearchFilter> initialRequestSearchFilterOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult distanceChanged(String distanceStr),
    @required TResult onlyCompatibleClicked(),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return initialized(initialRequestSearchFilterOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(
        Option<RequestSearchFilter> initialRequestSearchFilterOption),
    TResult bloodTypeChanged(String bloodType),
    TResult distanceChanged(String distanceStr),
    TResult onlyCompatibleClicked(),
    TResult localizationChanged(String city, String lat, String long),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialRequestSearchFilterOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult distanceChanged(_DistanceChanged value),
    @required TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult distanceChanged(_DistanceChanged value),
    TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    TResult localizationChanged(_LocalizationChanged value),
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

abstract class _Initialized implements RequestSearchFilterFormEvent {
  const factory _Initialized(
          Option<RequestSearchFilter> initialRequestSearchFilterOption) =
      _$_Initialized;

  Option<RequestSearchFilter> get initialRequestSearchFilterOption;
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
    extends _$RequestSearchFilterFormEventCopyWithImpl<$Res>
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
    return 'RequestSearchFilterFormEvent.bloodTypeChanged(bloodType: $bloodType)';
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
    @required
        TResult initialized(
            Option<RequestSearchFilter> initialRequestSearchFilterOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult distanceChanged(String distanceStr),
    @required TResult onlyCompatibleClicked(),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return bloodTypeChanged(bloodType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(
        Option<RequestSearchFilter> initialRequestSearchFilterOption),
    TResult bloodTypeChanged(String bloodType),
    TResult distanceChanged(String distanceStr),
    TResult onlyCompatibleClicked(),
    TResult localizationChanged(String city, String lat, String long),
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
    @required TResult distanceChanged(_DistanceChanged value),
    @required TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return bloodTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult distanceChanged(_DistanceChanged value),
    TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    TResult localizationChanged(_LocalizationChanged value),
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

abstract class _BloodTypeChanged implements RequestSearchFilterFormEvent {
  const factory _BloodTypeChanged(String bloodType) = _$_BloodTypeChanged;

  String get bloodType;
  @JsonKey(ignore: true)
  _$BloodTypeChangedCopyWith<_BloodTypeChanged> get copyWith;
}

/// @nodoc
abstract class _$DistanceChangedCopyWith<$Res> {
  factory _$DistanceChangedCopyWith(
          _DistanceChanged value, $Res Function(_DistanceChanged) then) =
      __$DistanceChangedCopyWithImpl<$Res>;
  $Res call({String distanceStr});
}

/// @nodoc
class __$DistanceChangedCopyWithImpl<$Res>
    extends _$RequestSearchFilterFormEventCopyWithImpl<$Res>
    implements _$DistanceChangedCopyWith<$Res> {
  __$DistanceChangedCopyWithImpl(
      _DistanceChanged _value, $Res Function(_DistanceChanged) _then)
      : super(_value, (v) => _then(v as _DistanceChanged));

  @override
  _DistanceChanged get _value => super._value as _DistanceChanged;

  @override
  $Res call({
    Object distanceStr = freezed,
  }) {
    return _then(_DistanceChanged(
      distanceStr == freezed ? _value.distanceStr : distanceStr as String,
    ));
  }
}

/// @nodoc
class _$_DistanceChanged implements _DistanceChanged {
  const _$_DistanceChanged(this.distanceStr) : assert(distanceStr != null);

  @override
  final String distanceStr;

  @override
  String toString() {
    return 'RequestSearchFilterFormEvent.distanceChanged(distanceStr: $distanceStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DistanceChanged &&
            (identical(other.distanceStr, distanceStr) ||
                const DeepCollectionEquality()
                    .equals(other.distanceStr, distanceStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(distanceStr);

  @JsonKey(ignore: true)
  @override
  _$DistanceChangedCopyWith<_DistanceChanged> get copyWith =>
      __$DistanceChangedCopyWithImpl<_DistanceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initialized(
            Option<RequestSearchFilter> initialRequestSearchFilterOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult distanceChanged(String distanceStr),
    @required TResult onlyCompatibleClicked(),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return distanceChanged(distanceStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(
        Option<RequestSearchFilter> initialRequestSearchFilterOption),
    TResult bloodTypeChanged(String bloodType),
    TResult distanceChanged(String distanceStr),
    TResult onlyCompatibleClicked(),
    TResult localizationChanged(String city, String lat, String long),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (distanceChanged != null) {
      return distanceChanged(distanceStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult distanceChanged(_DistanceChanged value),
    @required TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return distanceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult distanceChanged(_DistanceChanged value),
    TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (distanceChanged != null) {
      return distanceChanged(this);
    }
    return orElse();
  }
}

abstract class _DistanceChanged implements RequestSearchFilterFormEvent {
  const factory _DistanceChanged(String distanceStr) = _$_DistanceChanged;

  String get distanceStr;
  @JsonKey(ignore: true)
  _$DistanceChangedCopyWith<_DistanceChanged> get copyWith;
}

/// @nodoc
abstract class _$OnlyCompatibleClickedCopyWith<$Res> {
  factory _$OnlyCompatibleClickedCopyWith(_OnlyCompatibleClicked value,
          $Res Function(_OnlyCompatibleClicked) then) =
      __$OnlyCompatibleClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnlyCompatibleClickedCopyWithImpl<$Res>
    extends _$RequestSearchFilterFormEventCopyWithImpl<$Res>
    implements _$OnlyCompatibleClickedCopyWith<$Res> {
  __$OnlyCompatibleClickedCopyWithImpl(_OnlyCompatibleClicked _value,
      $Res Function(_OnlyCompatibleClicked) _then)
      : super(_value, (v) => _then(v as _OnlyCompatibleClicked));

  @override
  _OnlyCompatibleClicked get _value => super._value as _OnlyCompatibleClicked;
}

/// @nodoc
class _$_OnlyCompatibleClicked implements _OnlyCompatibleClicked {
  const _$_OnlyCompatibleClicked();

  @override
  String toString() {
    return 'RequestSearchFilterFormEvent.onlyCompatibleClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnlyCompatibleClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initialized(
            Option<RequestSearchFilter> initialRequestSearchFilterOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult distanceChanged(String distanceStr),
    @required TResult onlyCompatibleClicked(),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return onlyCompatibleClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(
        Option<RequestSearchFilter> initialRequestSearchFilterOption),
    TResult bloodTypeChanged(String bloodType),
    TResult distanceChanged(String distanceStr),
    TResult onlyCompatibleClicked(),
    TResult localizationChanged(String city, String lat, String long),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onlyCompatibleClicked != null) {
      return onlyCompatibleClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult distanceChanged(_DistanceChanged value),
    @required TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return onlyCompatibleClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult distanceChanged(_DistanceChanged value),
    TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onlyCompatibleClicked != null) {
      return onlyCompatibleClicked(this);
    }
    return orElse();
  }
}

abstract class _OnlyCompatibleClicked implements RequestSearchFilterFormEvent {
  const factory _OnlyCompatibleClicked() = _$_OnlyCompatibleClicked;
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
    extends _$RequestSearchFilterFormEventCopyWithImpl<$Res>
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
    return 'RequestSearchFilterFormEvent.localizationChanged(city: $city, lat: $lat, long: $long)';
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
    @required
        TResult initialized(
            Option<RequestSearchFilter> initialRequestSearchFilterOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult distanceChanged(String distanceStr),
    @required TResult onlyCompatibleClicked(),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return localizationChanged(city, lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(
        Option<RequestSearchFilter> initialRequestSearchFilterOption),
    TResult bloodTypeChanged(String bloodType),
    TResult distanceChanged(String distanceStr),
    TResult onlyCompatibleClicked(),
    TResult localizationChanged(String city, String lat, String long),
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
    @required TResult distanceChanged(_DistanceChanged value),
    @required TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return localizationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult distanceChanged(_DistanceChanged value),
    TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    TResult localizationChanged(_LocalizationChanged value),
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

abstract class _LocalizationChanged implements RequestSearchFilterFormEvent {
  const factory _LocalizationChanged(String city, String lat, String long) =
      _$_LocalizationChanged;

  String get city;
  String get lat;
  String get long;
  @JsonKey(ignore: true)
  _$LocalizationChangedCopyWith<_LocalizationChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res>
    extends _$RequestSearchFilterFormEventCopyWithImpl<$Res>
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
    return 'RequestSearchFilterFormEvent.saved()';
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
    @required
        TResult initialized(
            Option<RequestSearchFilter> initialRequestSearchFilterOption),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult distanceChanged(String distanceStr),
    @required TResult onlyCompatibleClicked(),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(
        Option<RequestSearchFilter> initialRequestSearchFilterOption),
    TResult bloodTypeChanged(String bloodType),
    TResult distanceChanged(String distanceStr),
    TResult onlyCompatibleClicked(),
    TResult localizationChanged(String city, String lat, String long),
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
    @required TResult distanceChanged(_DistanceChanged value),
    @required TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bloodTypeChanged != null);
    assert(distanceChanged != null);
    assert(onlyCompatibleClicked != null);
    assert(localizationChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult distanceChanged(_DistanceChanged value),
    TResult onlyCompatibleClicked(_OnlyCompatibleClicked value),
    TResult localizationChanged(_LocalizationChanged value),
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

abstract class _Saved implements RequestSearchFilterFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$RequestSearchFilterFormStateTearOff {
  const _$RequestSearchFilterFormStateTearOff();

// ignore: unused_element
  _RequestSearchFilterFormState call(
      {@required
          RequestSearchFilter requestSearchFilter,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption}) {
    return _RequestSearchFilterFormState(
      requestSearchFilter: requestSearchFilter,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestSearchFilterFormState = _$RequestSearchFilterFormStateTearOff();

/// @nodoc
mixin _$RequestSearchFilterFormState {
  RequestSearchFilter get requestSearchFilter;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<RequestFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $RequestSearchFilterFormStateCopyWith<RequestSearchFilterFormState>
      get copyWith;
}

/// @nodoc
abstract class $RequestSearchFilterFormStateCopyWith<$Res> {
  factory $RequestSearchFilterFormStateCopyWith(
          RequestSearchFilterFormState value,
          $Res Function(RequestSearchFilterFormState) then) =
      _$RequestSearchFilterFormStateCopyWithImpl<$Res>;
  $Res call(
      {RequestSearchFilter requestSearchFilter,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption});

  $RequestSearchFilterCopyWith<$Res> get requestSearchFilter;
}

/// @nodoc
class _$RequestSearchFilterFormStateCopyWithImpl<$Res>
    implements $RequestSearchFilterFormStateCopyWith<$Res> {
  _$RequestSearchFilterFormStateCopyWithImpl(this._value, this._then);

  final RequestSearchFilterFormState _value;
  // ignore: unused_field
  final $Res Function(RequestSearchFilterFormState) _then;

  @override
  $Res call({
    Object requestSearchFilter = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      requestSearchFilter: requestSearchFilter == freezed
          ? _value.requestSearchFilter
          : requestSearchFilter as RequestSearchFilter,
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
abstract class _$RequestSearchFilterFormStateCopyWith<$Res>
    implements $RequestSearchFilterFormStateCopyWith<$Res> {
  factory _$RequestSearchFilterFormStateCopyWith(
          _RequestSearchFilterFormState value,
          $Res Function(_RequestSearchFilterFormState) then) =
      __$RequestSearchFilterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RequestSearchFilter requestSearchFilter,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $RequestSearchFilterCopyWith<$Res> get requestSearchFilter;
}

/// @nodoc
class __$RequestSearchFilterFormStateCopyWithImpl<$Res>
    extends _$RequestSearchFilterFormStateCopyWithImpl<$Res>
    implements _$RequestSearchFilterFormStateCopyWith<$Res> {
  __$RequestSearchFilterFormStateCopyWithImpl(
      _RequestSearchFilterFormState _value,
      $Res Function(_RequestSearchFilterFormState) _then)
      : super(_value, (v) => _then(v as _RequestSearchFilterFormState));

  @override
  _RequestSearchFilterFormState get _value =>
      super._value as _RequestSearchFilterFormState;

  @override
  $Res call({
    Object requestSearchFilter = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_RequestSearchFilterFormState(
      requestSearchFilter: requestSearchFilter == freezed
          ? _value.requestSearchFilter
          : requestSearchFilter as RequestSearchFilter,
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
class _$_RequestSearchFilterFormState implements _RequestSearchFilterFormState {
  const _$_RequestSearchFilterFormState(
      {@required this.requestSearchFilter,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(requestSearchFilter != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final RequestSearchFilter requestSearchFilter;
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
    return 'RequestSearchFilterFormState(requestSearchFilter: $requestSearchFilter, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSearchFilterFormState &&
            (identical(other.requestSearchFilter, requestSearchFilter) ||
                const DeepCollectionEquality()
                    .equals(other.requestSearchFilter, requestSearchFilter)) &&
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
      const DeepCollectionEquality().hash(requestSearchFilter) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RequestSearchFilterFormStateCopyWith<_RequestSearchFilterFormState>
      get copyWith => __$RequestSearchFilterFormStateCopyWithImpl<
          _RequestSearchFilterFormState>(this, _$identity);
}

abstract class _RequestSearchFilterFormState
    implements RequestSearchFilterFormState {
  const factory _RequestSearchFilterFormState(
      {@required
          RequestSearchFilter requestSearchFilter,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<RequestFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_RequestSearchFilterFormState;

  @override
  RequestSearchFilter get requestSearchFilter;
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
  _$RequestSearchFilterFormStateCopyWith<_RequestSearchFilterFormState>
      get copyWith;
}
