part of 'request_watcher_bloc.dart';

@freezed
abstract class RequestWatcherEvent with _$RequestWatcherEvent {
  const factory RequestWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory RequestWatcherEvent.watchOtherUserStarted(String userId) = _WatchOtherUserStarted;

  const factory RequestWatcherEvent.requestReceived(Either<RequestFailure, KtList<Request>> failureOrRequest) = _RequestReceived;
}
