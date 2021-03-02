part of 'request_search_watcher_bloc.dart';

@freezed
abstract class RequestSearchWatcherEvent with _$RequestSearchWatcherEvent {
  const factory RequestSearchWatcherEvent.watchNearbyStarted() =
      _WatchNearbyStarted;

  const factory RequestSearchWatcherEvent.requestSearchReceived(
      Either<RequestFailure, KtList<RequestSearch>> failureOrRequest,
      RequestSearchFilter requestSearchFilter) = _RequestSearchReceived;
}
