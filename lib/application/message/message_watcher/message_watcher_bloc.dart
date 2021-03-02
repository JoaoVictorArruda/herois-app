import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/messages/i_message_repository.dart';
import 'package:herois/domain/messages/message.dart';
import 'package:herois/domain/messages/message_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'message_watcher_bloc.freezed.dart';
part 'message_watcher_event.dart';
part 'message_watcher_state.dart';

@injectable
class MessageWatcherBloc
    extends Bloc<MessageWatcherEvent, MessageWatcherState> {
  final IMessageRepository _messageRepository;

  MessageWatcherBloc(this._messageRepository)
      : super(const MessageWatcherState.initial());

  StreamSubscription<Either<MessageFailure, KtList<Message>>>
      _messageStreamSubscription;

  @override
  Stream<MessageWatcherState> mapEventToState(
    MessageWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const MessageWatcherState.loadInProgress();
        await _messageStreamSubscription?.cancel();
        _messageStreamSubscription = _messageRepository
            .watchAll(e.userId)
            .listen(
              (failureOrMessages) =>
                  add(MessageWatcherEvent.messagesReceived(failureOrMessages)),
            );
      },
      messagesReceived: (e) async* {
        yield e.failureOrMessages.fold(
          (f) => MessageWatcherState.loadFailure(f),
          (messages) => MessageWatcherState.loadSuccess(messages),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _messageStreamSubscription?.cancel();
    return super.close();
  }
}
