part of 'request_form_bloc.dart';

@freezed
abstract class RequestFormState with _$RequestFormState {
  const factory RequestFormState({
    @required Request request,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<RequestFailure, Unit>> saveFailureOrSuccessOption,
  }) = _RequestFormState;

  factory RequestFormState.initial() => RequestFormState(
        request: Request.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
