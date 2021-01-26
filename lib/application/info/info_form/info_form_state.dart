part of 'info_form_bloc.dart';

@freezed
abstract class InfoFormState with _$InfoFormState {
  const factory InfoFormState({
    @required Info info,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<InfoFailure, Unit>> saveFailureOrSuccessOption,
  }) = _InfoFormState;

  factory InfoFormState.initial() => InfoFormState(
        info: Info.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
