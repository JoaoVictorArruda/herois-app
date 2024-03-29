import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/messages/i_message_repository.dart';
import 'package:herois/domain/messages/message.dart';
import 'package:herois/domain/messages/message_failure.dart';
import 'package:herois/domain/messages/value_objects.dart';
import 'package:herois/infrastructure/core/firestore_helpers.dart';
import 'package:herois/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'message_form_bloc.freezed.dart';
part 'message_form_event.dart';
part 'message_form_state.dart';

@injectable
class MessageFormBloc extends Bloc<MessageFormEvent, MessageFormState> {
  final IMessageRepository _messageRepository;

  MessageFormBloc(this._messageRepository) : super(MessageFormState.initial());

  @override
  Stream<MessageFormState> mapEventToState(
    MessageFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialMessageOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state,
          (initialMessage) {
            return state.copyWith(
              message: initialMessage,
              isEditing: true,
            );
          },
        );
      },
      textChanged: (e) async* {
        yield state.copyWith(
          message: state.message.copyWith(text: MessageText(e.textStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<MessageFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        final info = await getIt<FirebaseFirestore>().getOtherInfo(e.userId);

        if (state.message.failureOption.isNone()) {
          // failureOrSuccess = state.isEditing
          //     ? await _messageRepository.update(state.message, e.userId)
          //     :
          await _messageRepository.create(state.message, e.userId, info);
        }

        yield state.copyWith(
          message: Message.empty(),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
