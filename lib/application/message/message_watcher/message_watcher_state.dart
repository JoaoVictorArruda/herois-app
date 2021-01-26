part of 'message_watcher_bloc.dart';

@freezed
abstract class MessageWatcherState with _$MessageWatcherState {
  const factory MessageWatcherState.initial() = _Initial;
  const factory MessageWatcherState.loadInProgress() = _LoadInProgress;
  const factory MessageWatcherState.loadSuccess(KtList<Message> messages) = _LoadSuccess;
  const factory MessageWatcherState.loadFailure(MessageFailure messageFailure) =
      _LoadFailure;
}
