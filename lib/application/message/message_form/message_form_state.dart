part of 'message_form_bloc.dart';

@freezed
abstract class MessageFormState with _$MessageFormState {
  const factory MessageFormState({
    @required Message message,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption,
  }) = _MessageFormState;

  factory MessageFormState.initial() => MessageFormState(
        message: Message.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
