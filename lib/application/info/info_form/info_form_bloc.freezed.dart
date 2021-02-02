// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'info_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InfoFormEventTearOff {
  const _$InfoFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Info> initialInfoOption) {
    return _Initialized(
      initialInfoOption,
    );
  }

// ignore: unused_element
  _GenderChanged genderChanged(String genderStr) {
    return _GenderChanged(
      genderStr,
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
  _PhotoUrlChanged photoUrlChanged(String photoUrl) {
    return _PhotoUrlChanged(
      photoUrl,
    );
  }

// ignore: unused_element
  _BioChanged bioChanged(String bioStr) {
    return _BioChanged(
      bioStr,
    );
  }

// ignore: unused_element
  _IsVisibleChanged isVisibleChanged(bool isVisibleBool) {
    return _IsVisibleChanged(
      isVisibleBool,
    );
  }

// ignore: unused_element
  _DateLastDonateChange dateLastDonateChange(String dateLastDonateStr) {
    return _DateLastDonateChange(
      dateLastDonateStr,
    );
  }

// ignore: unused_element
  _NeverDonatedChange neverDonatedChange(bool neverDonatedBool) {
    return _NeverDonatedChange(
      neverDonatedBool,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $InfoFormEvent = _$InfoFormEventTearOff();

/// @nodoc
mixin _$InfoFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InfoFormEventCopyWith<$Res> {
  factory $InfoFormEventCopyWith(
          InfoFormEvent value, $Res Function(InfoFormEvent) then) =
      _$InfoFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InfoFormEventCopyWithImpl<$Res>
    implements $InfoFormEventCopyWith<$Res> {
  _$InfoFormEventCopyWithImpl(this._value, this._then);

  final InfoFormEvent _value;
  // ignore: unused_field
  final $Res Function(InfoFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Info> initialInfoOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$InfoFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialInfoOption = freezed,
  }) {
    return _then(_Initialized(
      initialInfoOption == freezed
          ? _value.initialInfoOption
          : initialInfoOption as Option<Info>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialInfoOption)
      : assert(initialInfoOption != null);

  @override
  final Option<Info> initialInfoOption;

  @override
  String toString() {
    return 'InfoFormEvent.initialized(initialInfoOption: $initialInfoOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialInfoOption, initialInfoOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialInfoOption, initialInfoOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialInfoOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return initialized(initialInfoOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialInfoOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
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

abstract class _Initialized implements InfoFormEvent {
  const factory _Initialized(Option<Info> initialInfoOption) = _$_Initialized;

  Option<Info> get initialInfoOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$GenderChangedCopyWith<$Res> {
  factory _$GenderChangedCopyWith(
          _GenderChanged value, $Res Function(_GenderChanged) then) =
      __$GenderChangedCopyWithImpl<$Res>;
  $Res call({String genderStr});
}

/// @nodoc
class __$GenderChangedCopyWithImpl<$Res>
    extends _$InfoFormEventCopyWithImpl<$Res>
    implements _$GenderChangedCopyWith<$Res> {
  __$GenderChangedCopyWithImpl(
      _GenderChanged _value, $Res Function(_GenderChanged) _then)
      : super(_value, (v) => _then(v as _GenderChanged));

  @override
  _GenderChanged get _value => super._value as _GenderChanged;

  @override
  $Res call({
    Object genderStr = freezed,
  }) {
    return _then(_GenderChanged(
      genderStr == freezed ? _value.genderStr : genderStr as String,
    ));
  }
}

/// @nodoc
class _$_GenderChanged implements _GenderChanged {
  const _$_GenderChanged(this.genderStr) : assert(genderStr != null);

  @override
  final String genderStr;

  @override
  String toString() {
    return 'InfoFormEvent.genderChanged(genderStr: $genderStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenderChanged &&
            (identical(other.genderStr, genderStr) ||
                const DeepCollectionEquality()
                    .equals(other.genderStr, genderStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genderStr);

  @JsonKey(ignore: true)
  @override
  _$GenderChangedCopyWith<_GenderChanged> get copyWith =>
      __$GenderChangedCopyWithImpl<_GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return genderChanged(genderStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(genderStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _GenderChanged implements InfoFormEvent {
  const factory _GenderChanged(String genderStr) = _$_GenderChanged;

  String get genderStr;
  @JsonKey(ignore: true)
  _$GenderChangedCopyWith<_GenderChanged> get copyWith;
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
    extends _$InfoFormEventCopyWithImpl<$Res>
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
    return 'InfoFormEvent.bloodTypeChanged(bloodType: $bloodType)';
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
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return bloodTypeChanged(bloodType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
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
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return bloodTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
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

abstract class _BloodTypeChanged implements InfoFormEvent {
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
class __$NameChangedCopyWithImpl<$Res> extends _$InfoFormEventCopyWithImpl<$Res>
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
    return 'InfoFormEvent.nameChanged(nameStr: $nameStr)';
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
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
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
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
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

abstract class _NameChanged implements InfoFormEvent {
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
    extends _$InfoFormEventCopyWithImpl<$Res>
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
    return 'InfoFormEvent.localizationChanged(city: $city, lat: $lat, long: $long)';
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
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return localizationChanged(city, lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
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
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return localizationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
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

abstract class _LocalizationChanged implements InfoFormEvent {
  const factory _LocalizationChanged(String city, String lat, String long) =
      _$_LocalizationChanged;

  String get city;
  String get lat;
  String get long;
  @JsonKey(ignore: true)
  _$LocalizationChangedCopyWith<_LocalizationChanged> get copyWith;
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
    extends _$InfoFormEventCopyWithImpl<$Res>
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
    return 'InfoFormEvent.photoUrlChanged(photoUrl: $photoUrl)';
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
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return photoUrlChanged(photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
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
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return photoUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
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

abstract class _PhotoUrlChanged implements InfoFormEvent {
  const factory _PhotoUrlChanged(String photoUrl) = _$_PhotoUrlChanged;

  String get photoUrl;
  @JsonKey(ignore: true)
  _$PhotoUrlChangedCopyWith<_PhotoUrlChanged> get copyWith;
}

/// @nodoc
abstract class _$BioChangedCopyWith<$Res> {
  factory _$BioChangedCopyWith(
          _BioChanged value, $Res Function(_BioChanged) then) =
      __$BioChangedCopyWithImpl<$Res>;
  $Res call({String bioStr});
}

/// @nodoc
class __$BioChangedCopyWithImpl<$Res> extends _$InfoFormEventCopyWithImpl<$Res>
    implements _$BioChangedCopyWith<$Res> {
  __$BioChangedCopyWithImpl(
      _BioChanged _value, $Res Function(_BioChanged) _then)
      : super(_value, (v) => _then(v as _BioChanged));

  @override
  _BioChanged get _value => super._value as _BioChanged;

  @override
  $Res call({
    Object bioStr = freezed,
  }) {
    return _then(_BioChanged(
      bioStr == freezed ? _value.bioStr : bioStr as String,
    ));
  }
}

/// @nodoc
class _$_BioChanged implements _BioChanged {
  const _$_BioChanged(this.bioStr) : assert(bioStr != null);

  @override
  final String bioStr;

  @override
  String toString() {
    return 'InfoFormEvent.bioChanged(bioStr: $bioStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BioChanged &&
            (identical(other.bioStr, bioStr) ||
                const DeepCollectionEquality().equals(other.bioStr, bioStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bioStr);

  @JsonKey(ignore: true)
  @override
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      __$BioChangedCopyWithImpl<_BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return bioChanged(bioStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(bioStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class _BioChanged implements InfoFormEvent {
  const factory _BioChanged(String bioStr) = _$_BioChanged;

  String get bioStr;
  @JsonKey(ignore: true)
  _$BioChangedCopyWith<_BioChanged> get copyWith;
}

/// @nodoc
abstract class _$IsVisibleChangedCopyWith<$Res> {
  factory _$IsVisibleChangedCopyWith(
          _IsVisibleChanged value, $Res Function(_IsVisibleChanged) then) =
      __$IsVisibleChangedCopyWithImpl<$Res>;
  $Res call({bool isVisibleBool});
}

/// @nodoc
class __$IsVisibleChangedCopyWithImpl<$Res>
    extends _$InfoFormEventCopyWithImpl<$Res>
    implements _$IsVisibleChangedCopyWith<$Res> {
  __$IsVisibleChangedCopyWithImpl(
      _IsVisibleChanged _value, $Res Function(_IsVisibleChanged) _then)
      : super(_value, (v) => _then(v as _IsVisibleChanged));

  @override
  _IsVisibleChanged get _value => super._value as _IsVisibleChanged;

  @override
  $Res call({
    Object isVisibleBool = freezed,
  }) {
    return _then(_IsVisibleChanged(
      isVisibleBool == freezed ? _value.isVisibleBool : isVisibleBool as bool,
    ));
  }
}

/// @nodoc
class _$_IsVisibleChanged implements _IsVisibleChanged {
  const _$_IsVisibleChanged(this.isVisibleBool) : assert(isVisibleBool != null);

  @override
  final bool isVisibleBool;

  @override
  String toString() {
    return 'InfoFormEvent.isVisibleChanged(isVisibleBool: $isVisibleBool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsVisibleChanged &&
            (identical(other.isVisibleBool, isVisibleBool) ||
                const DeepCollectionEquality()
                    .equals(other.isVisibleBool, isVisibleBool)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isVisibleBool);

  @JsonKey(ignore: true)
  @override
  _$IsVisibleChangedCopyWith<_IsVisibleChanged> get copyWith =>
      __$IsVisibleChangedCopyWithImpl<_IsVisibleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return isVisibleChanged(isVisibleBool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isVisibleChanged != null) {
      return isVisibleChanged(isVisibleBool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return isVisibleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isVisibleChanged != null) {
      return isVisibleChanged(this);
    }
    return orElse();
  }
}

abstract class _IsVisibleChanged implements InfoFormEvent {
  const factory _IsVisibleChanged(bool isVisibleBool) = _$_IsVisibleChanged;

  bool get isVisibleBool;
  @JsonKey(ignore: true)
  _$IsVisibleChangedCopyWith<_IsVisibleChanged> get copyWith;
}

/// @nodoc
abstract class _$DateLastDonateChangeCopyWith<$Res> {
  factory _$DateLastDonateChangeCopyWith(_DateLastDonateChange value,
          $Res Function(_DateLastDonateChange) then) =
      __$DateLastDonateChangeCopyWithImpl<$Res>;
  $Res call({String dateLastDonateStr});
}

/// @nodoc
class __$DateLastDonateChangeCopyWithImpl<$Res>
    extends _$InfoFormEventCopyWithImpl<$Res>
    implements _$DateLastDonateChangeCopyWith<$Res> {
  __$DateLastDonateChangeCopyWithImpl(
      _DateLastDonateChange _value, $Res Function(_DateLastDonateChange) _then)
      : super(_value, (v) => _then(v as _DateLastDonateChange));

  @override
  _DateLastDonateChange get _value => super._value as _DateLastDonateChange;

  @override
  $Res call({
    Object dateLastDonateStr = freezed,
  }) {
    return _then(_DateLastDonateChange(
      dateLastDonateStr == freezed
          ? _value.dateLastDonateStr
          : dateLastDonateStr as String,
    ));
  }
}

/// @nodoc
class _$_DateLastDonateChange implements _DateLastDonateChange {
  const _$_DateLastDonateChange(this.dateLastDonateStr)
      : assert(dateLastDonateStr != null);

  @override
  final String dateLastDonateStr;

  @override
  String toString() {
    return 'InfoFormEvent.dateLastDonateChange(dateLastDonateStr: $dateLastDonateStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateLastDonateChange &&
            (identical(other.dateLastDonateStr, dateLastDonateStr) ||
                const DeepCollectionEquality()
                    .equals(other.dateLastDonateStr, dateLastDonateStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateLastDonateStr);

  @JsonKey(ignore: true)
  @override
  _$DateLastDonateChangeCopyWith<_DateLastDonateChange> get copyWith =>
      __$DateLastDonateChangeCopyWithImpl<_DateLastDonateChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return dateLastDonateChange(dateLastDonateStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateLastDonateChange != null) {
      return dateLastDonateChange(dateLastDonateStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return dateLastDonateChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateLastDonateChange != null) {
      return dateLastDonateChange(this);
    }
    return orElse();
  }
}

abstract class _DateLastDonateChange implements InfoFormEvent {
  const factory _DateLastDonateChange(String dateLastDonateStr) =
      _$_DateLastDonateChange;

  String get dateLastDonateStr;
  @JsonKey(ignore: true)
  _$DateLastDonateChangeCopyWith<_DateLastDonateChange> get copyWith;
}

/// @nodoc
abstract class _$NeverDonatedChangeCopyWith<$Res> {
  factory _$NeverDonatedChangeCopyWith(
          _NeverDonatedChange value, $Res Function(_NeverDonatedChange) then) =
      __$NeverDonatedChangeCopyWithImpl<$Res>;
  $Res call({bool neverDonatedBool});
}

/// @nodoc
class __$NeverDonatedChangeCopyWithImpl<$Res>
    extends _$InfoFormEventCopyWithImpl<$Res>
    implements _$NeverDonatedChangeCopyWith<$Res> {
  __$NeverDonatedChangeCopyWithImpl(
      _NeverDonatedChange _value, $Res Function(_NeverDonatedChange) _then)
      : super(_value, (v) => _then(v as _NeverDonatedChange));

  @override
  _NeverDonatedChange get _value => super._value as _NeverDonatedChange;

  @override
  $Res call({
    Object neverDonatedBool = freezed,
  }) {
    return _then(_NeverDonatedChange(
      neverDonatedBool == freezed
          ? _value.neverDonatedBool
          : neverDonatedBool as bool,
    ));
  }
}

/// @nodoc
class _$_NeverDonatedChange implements _NeverDonatedChange {
  const _$_NeverDonatedChange(this.neverDonatedBool)
      : assert(neverDonatedBool != null);

  @override
  final bool neverDonatedBool;

  @override
  String toString() {
    return 'InfoFormEvent.neverDonatedChange(neverDonatedBool: $neverDonatedBool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NeverDonatedChange &&
            (identical(other.neverDonatedBool, neverDonatedBool) ||
                const DeepCollectionEquality()
                    .equals(other.neverDonatedBool, neverDonatedBool)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(neverDonatedBool);

  @JsonKey(ignore: true)
  @override
  _$NeverDonatedChangeCopyWith<_NeverDonatedChange> get copyWith =>
      __$NeverDonatedChangeCopyWithImpl<_NeverDonatedChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return neverDonatedChange(neverDonatedBool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (neverDonatedChange != null) {
      return neverDonatedChange(neverDonatedBool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return neverDonatedChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (neverDonatedChange != null) {
      return neverDonatedChange(this);
    }
    return orElse();
  }
}

abstract class _NeverDonatedChange implements InfoFormEvent {
  const factory _NeverDonatedChange(bool neverDonatedBool) =
      _$_NeverDonatedChange;

  bool get neverDonatedBool;
  @JsonKey(ignore: true)
  _$NeverDonatedChangeCopyWith<_NeverDonatedChange> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$InfoFormEventCopyWithImpl<$Res>
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
    return 'InfoFormEvent.saved()';
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
    @required TResult initialized(Option<Info> initialInfoOption),
    @required TResult genderChanged(String genderStr),
    @required TResult bloodTypeChanged(String bloodType),
    @required TResult nameChanged(String nameStr),
    @required TResult localizationChanged(String city, String lat, String long),
    @required TResult photoUrlChanged(String photoUrl),
    @required TResult bioChanged(String bioStr),
    @required TResult isVisibleChanged(bool isVisibleBool),
    @required TResult dateLastDonateChange(String dateLastDonateStr),
    @required TResult neverDonatedChange(bool neverDonatedBool),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Info> initialInfoOption),
    TResult genderChanged(String genderStr),
    TResult bloodTypeChanged(String bloodType),
    TResult nameChanged(String nameStr),
    TResult localizationChanged(String city, String lat, String long),
    TResult photoUrlChanged(String photoUrl),
    TResult bioChanged(String bioStr),
    TResult isVisibleChanged(bool isVisibleBool),
    TResult dateLastDonateChange(String dateLastDonateStr),
    TResult neverDonatedChange(bool neverDonatedBool),
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
    @required TResult genderChanged(_GenderChanged value),
    @required TResult bloodTypeChanged(_BloodTypeChanged value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult localizationChanged(_LocalizationChanged value),
    @required TResult photoUrlChanged(_PhotoUrlChanged value),
    @required TResult bioChanged(_BioChanged value),
    @required TResult isVisibleChanged(_IsVisibleChanged value),
    @required TResult dateLastDonateChange(_DateLastDonateChange value),
    @required TResult neverDonatedChange(_NeverDonatedChange value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(genderChanged != null);
    assert(bloodTypeChanged != null);
    assert(nameChanged != null);
    assert(localizationChanged != null);
    assert(photoUrlChanged != null);
    assert(bioChanged != null);
    assert(isVisibleChanged != null);
    assert(dateLastDonateChange != null);
    assert(neverDonatedChange != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult genderChanged(_GenderChanged value),
    TResult bloodTypeChanged(_BloodTypeChanged value),
    TResult nameChanged(_NameChanged value),
    TResult localizationChanged(_LocalizationChanged value),
    TResult photoUrlChanged(_PhotoUrlChanged value),
    TResult bioChanged(_BioChanged value),
    TResult isVisibleChanged(_IsVisibleChanged value),
    TResult dateLastDonateChange(_DateLastDonateChange value),
    TResult neverDonatedChange(_NeverDonatedChange value),
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

abstract class _Saved implements InfoFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$InfoFormStateTearOff {
  const _$InfoFormStateTearOff();

// ignore: unused_element
  _InfoFormState call(
      {@required Info info,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<InfoFailure, Unit>> saveFailureOrSuccessOption}) {
    return _InfoFormState(
      info: info,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InfoFormState = _$InfoFormStateTearOff();

/// @nodoc
mixin _$InfoFormState {
  Info get info;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<InfoFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $InfoFormStateCopyWith<InfoFormState> get copyWith;
}

/// @nodoc
abstract class $InfoFormStateCopyWith<$Res> {
  factory $InfoFormStateCopyWith(
          InfoFormState value, $Res Function(InfoFormState) then) =
      _$InfoFormStateCopyWithImpl<$Res>;
  $Res call(
      {Info info,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<InfoFailure, Unit>> saveFailureOrSuccessOption});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$InfoFormStateCopyWithImpl<$Res>
    implements $InfoFormStateCopyWith<$Res> {
  _$InfoFormStateCopyWithImpl(this._value, this._then);

  final InfoFormState _value;
  // ignore: unused_field
  final $Res Function(InfoFormState) _then;

  @override
  $Res call({
    Object info = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed ? _value.info : info as Info,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<InfoFailure, Unit>>,
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
abstract class _$InfoFormStateCopyWith<$Res>
    implements $InfoFormStateCopyWith<$Res> {
  factory _$InfoFormStateCopyWith(
          _InfoFormState value, $Res Function(_InfoFormState) then) =
      __$InfoFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Info info,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<InfoFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$InfoFormStateCopyWithImpl<$Res>
    extends _$InfoFormStateCopyWithImpl<$Res>
    implements _$InfoFormStateCopyWith<$Res> {
  __$InfoFormStateCopyWithImpl(
      _InfoFormState _value, $Res Function(_InfoFormState) _then)
      : super(_value, (v) => _then(v as _InfoFormState));

  @override
  _InfoFormState get _value => super._value as _InfoFormState;

  @override
  $Res call({
    Object info = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_InfoFormState(
      info: info == freezed ? _value.info : info as Info,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<InfoFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_InfoFormState implements _InfoFormState {
  const _$_InfoFormState(
      {@required this.info,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(info != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Info info;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<InfoFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'InfoFormState(info: $info, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoFormState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
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
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$InfoFormStateCopyWith<_InfoFormState> get copyWith =>
      __$InfoFormStateCopyWithImpl<_InfoFormState>(this, _$identity);
}

abstract class _InfoFormState implements InfoFormState {
  const factory _InfoFormState(
          {@required
              Info info,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<InfoFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_InfoFormState;

  @override
  Info get info;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<InfoFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$InfoFormStateCopyWith<_InfoFormState> get copyWith;
}
