part of 'info_watcher_bloc.dart';

@freezed
abstract class InfoWatcherState with _$InfoWatcherState {

  const factory InfoWatcherState() = _InfoWatcherState;

  factory InfoWatcherState.initial() => const InfoWatcherState();

  const factory InfoWatcherState.loadInProgress() = DataTransferInProgress;

  const factory InfoWatcherState.loadSuccess(Info info) = LoadSuccess;

  const factory InfoWatcherState.loadListSuccess(KtList<Info> info, String userId) = LoadListSuccess;

  const factory InfoWatcherState.loadFailure(InfoFailure infoFailure) = LoadFailure;
}
