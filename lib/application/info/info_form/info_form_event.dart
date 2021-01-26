part of 'info_form_bloc.dart';

@freezed
abstract class InfoFormEvent with _$InfoFormEvent {
  const factory InfoFormEvent.initialized(Option<Info> initialInfoOption) =
      _Initialized;

  const factory InfoFormEvent.genderChanged(String genderStr) = _GenderChanged;

  const factory InfoFormEvent.bloodTypeChanged(String bloodType) = _BloodTypeChanged;

  const factory InfoFormEvent.nameChanged(String nameStr) = _NameChanged;

  const factory InfoFormEvent.localizationChanged(String city, String lat, String long) = _LocalizationChanged;

  const factory InfoFormEvent.photoUrlChanged(String photoUrl) = _PhotoUrlChanged;

  const factory InfoFormEvent.bioChanged(String bioStr) = _BioChanged;

  const factory InfoFormEvent.isVisibleChanged(bool isVisibleBool) = _IsVisibleChanged;

  const factory InfoFormEvent.saved() = _Saved;
}
