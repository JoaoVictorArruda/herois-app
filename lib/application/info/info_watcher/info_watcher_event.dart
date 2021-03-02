part of 'info_watcher_bloc.dart';

@freezed
abstract class InfoWatcherEvent with _$InfoWatcherEvent {
  const factory InfoWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory InfoWatcherEvent.watchOtherUserStarted(String userId) =
      _WatchOtherUserStarted;

  const factory InfoWatcherEvent.watchInfoSearchStarted() =
      _WatchInfoSearchStarted;

  const factory InfoWatcherEvent.watchInfoSearchFiltered(String query) =
      _WatchInfoSearchFiltered;

  const factory InfoWatcherEvent.infoReceived(
      Either<InfoFailure, Info> failureOrInfo) = _InfoReceived;

  const factory InfoWatcherEvent.infoListReceived(
      Either<InfoFailure, KtList<Info>> failureOrInfo) = _InfoListReceived;
}
