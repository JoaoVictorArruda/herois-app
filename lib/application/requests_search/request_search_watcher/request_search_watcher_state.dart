part of 'request_search_watcher_bloc.dart';

@freezed
abstract class RequestSearchWatcherState with _$RequestSearchWatcherState {
  const factory RequestSearchWatcherState.initial() = Initial;

  const factory RequestSearchWatcherState.loadInProgress() = DataTransferInProgress;

  const factory RequestSearchWatcherState.loadSuccess(KtList<RequestSearch> requests, String userId, RequestSearchFilter requestSearchFilter) = LoadSuccess;

  const factory RequestSearchWatcherState.loadFailure(RequestFailure requestFailure) = LoadFailure;
}
