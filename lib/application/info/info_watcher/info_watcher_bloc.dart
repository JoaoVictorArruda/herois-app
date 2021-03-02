import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/auth/i_auth_facade.dart';
import 'package:herois/domain/core/errors.dart';
import 'package:herois/domain/info/i_info_repository.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/info/info_failure.dart';
import 'package:herois/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'info_watcher_bloc.freezed.dart';
part 'info_watcher_event.dart';
part 'info_watcher_state.dart';

@injectable
class InfoWatcherBloc extends Bloc<InfoWatcherEvent, InfoWatcherState> {
  final IInfoRepository _infoRepository;

  InfoWatcherBloc(this._infoRepository) : super(InfoWatcherState.initial());

  StreamSubscription<Either<InfoFailure, Info>> _infoStreamSubscription;

  StreamSubscription<Either<InfoFailure, KtList<Info>>>
      _infoListStreamSubscription;

  @override
  Stream<InfoWatcherState> mapEventToState(
    InfoWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const InfoWatcherState.loadInProgress();
        await _infoStreamSubscription?.cancel();
        _infoStreamSubscription = _infoRepository
            .watchAll()
            .listen((info) => add(InfoWatcherEvent.infoReceived(info)));
      },
      watchOtherUserStarted: (e) async* {
        yield const InfoWatcherState.loadInProgress();
        await _infoStreamSubscription?.cancel();
        _infoStreamSubscription = _infoRepository
            .watchOtherUser(e.userId)
            .listen((info) => add(InfoWatcherEvent.infoReceived(info)));
      },
      watchInfoSearchStarted: (e) async* {
        await _infoListStreamSubscription?.cancel();
        _infoListStreamSubscription = _infoRepository
            .watchSearchInfoUserStarted()
            .listen((info) => add(InfoWatcherEvent.infoListReceived(info)));
      },
      watchInfoSearchFiltered: (e) async* {
        await _infoListStreamSubscription?.cancel();
        if (e.query == "") {
          _infoListStreamSubscription = _infoRepository
              .watchSearchInfoUserStarted()
              .listen((info) => add(InfoWatcherEvent.infoListReceived(info)));
        } else {
          _infoListStreamSubscription = _infoRepository
              .watchSearchInfoUserFiltered(e.query)
              .listen((info) => add(InfoWatcherEvent.infoListReceived(info)));
        }
      },
      infoReceived: (e) async* {
        yield e.failureOrInfo.fold(
          (f) => InfoWatcherState.loadFailure(f),
          (info) => InfoWatcherState.loadSuccess(info),
        );
      },
      infoListReceived: (e) async* {
        yield const InfoWatcherState.loadInProgress();
        final userOption = await getIt<IAuthFacade>().getSignedInUser();
        final user = userOption.getOrElse(() => throw NotAuthenticatedError());
        yield e.failureOrInfo.fold(
          (f) => InfoWatcherState.loadFailure(f),
          (info) =>
              InfoWatcherState.loadListSuccess(info, user.id.getOrCrash()),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    if (_infoStreamSubscription != null) {
      await _infoStreamSubscription.cancel();
    }
    if (_infoListStreamSubscription != null) {
      await _infoListStreamSubscription.cancel();
    }
    return super.close();
  }
}
