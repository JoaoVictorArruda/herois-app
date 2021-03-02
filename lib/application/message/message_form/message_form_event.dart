part of 'message_form_bloc.dart';

@freezed
abstract class MessageFormEvent with _$MessageFormEvent {
  const factory MessageFormEvent.initialized(
      Option<Message> initialMessageOption) = _Initialized;

  const factory MessageFormEvent.textChanged(String textStr) = _TextChanged;

  const factory MessageFormEvent.saved(String userId) = _Saved;
}
