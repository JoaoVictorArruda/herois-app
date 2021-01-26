part of 'request_search_filter_form_bloc.dart';

@freezed
abstract class RequestSearchFilterFormEvent with _$RequestSearchFilterFormEvent {
  const factory RequestSearchFilterFormEvent.initialized(Option<RequestSearchFilter> initialRequestSearchFilterOption) =_Initialized;

  const factory RequestSearchFilterFormEvent.bloodTypeChanged(String bloodType) = _BloodTypeChanged;

  const factory RequestSearchFilterFormEvent.distanceChanged(String distanceStr) = _DistanceChanged;

  const factory RequestSearchFilterFormEvent.localizationChanged(String city, String lat, String long) = _LocalizationChanged;

  const factory RequestSearchFilterFormEvent.saved() = _Saved;
}
