part of 'request_watcher_bloc.dart';

@freezed
abstract class RequestWatcherState with _$RequestWatcherState {
  const factory RequestWatcherState.initial() = Initial;

  const factory RequestWatcherState.loadInProgress() = DataTransferInProgress;

  const factory RequestWatcherState.loadSuccess(KtList<Request> requests) = LoadSuccess;

  const factory RequestWatcherState.loadFailure(RequestFailure requestFailure) =
      LoadFailure;
}
