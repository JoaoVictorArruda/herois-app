part of 'request_form_bloc.dart';

@freezed
abstract class RequestFormEvent with _$RequestFormEvent {
  const factory RequestFormEvent.initialized(
      Option<Request> initialRequestOption) = _Initialized;

  const factory RequestFormEvent.bloodTypeChanged(String bloodType) =
      _BloodTypeChanged;

  const factory RequestFormEvent.nameChanged(String nameStr) = _NameChanged;

  const factory RequestFormEvent.localizationChanged(
      String city, String lat, String long) = _LocalizationChanged;

  const factory RequestFormEvent.isOpenChanged(bool isOpen) = _IsOpenChanged;

  const factory RequestFormEvent.photoUrlChanged(String photoUrl) =
      _PhotoUrlChanged;

  const factory RequestFormEvent.saved() = _Saved;
}
