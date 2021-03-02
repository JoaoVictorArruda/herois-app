part of 'request_search_filter_form_bloc.dart';

@freezed
abstract class RequestSearchFilterFormState
    with _$RequestSearchFilterFormState {
  const factory RequestSearchFilterFormState({
    @required RequestSearchFilter requestSearchFilter,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption,
  }) = _RequestSearchFilterFormState;

  factory RequestSearchFilterFormState.initial() =>
      RequestSearchFilterFormState(
        requestSearchFilter: RequestSearchFilter.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
