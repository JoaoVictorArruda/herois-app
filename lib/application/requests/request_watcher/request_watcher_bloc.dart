import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/requests/i_request_repository.dart';
import 'package:herois/domain/requests/request.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'request_watcher_bloc.freezed.dart';
part 'request_watcher_event.dart';
part 'request_watcher_state.dart';

@injectable
class RequestWatcherBloc
    extends Bloc<RequestWatcherEvent, RequestWatcherState> {
  final IRequestRepository _requestRepository;

  RequestWatcherBloc(this._requestRepository)
      : super(const RequestWatcherState.initial());

  StreamSubscription<Either<RequestFailure, KtList<Request>>>
      _requestStreamSubscription;

  @override
  Stream<RequestWatcherState> mapEventToState(
    RequestWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const RequestWatcherState.loadInProgress();
        await _requestStreamSubscription?.cancel();
        _requestStreamSubscription = _requestRepository.watchAll().listen(
            (request) => add(RequestWatcherEvent.requestReceived(request)));
      },
      watchOtherUserStarted: (e) async* {
        yield const RequestWatcherState.loadInProgress();
        await _requestStreamSubscription?.cancel();
        _requestStreamSubscription = _requestRepository
            .watchOtherUserAll(e.userId)
            .listen(
                (request) => add(RequestWatcherEvent.requestReceived(request)));
      },
      requestReceived: (e) async* {
        yield e.failureOrRequest.fold(
          (f) => RequestWatcherState.loadFailure(f),
          (request) => RequestWatcherState.loadSuccess(request),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _requestStreamSubscription.cancel();
    return super.close();
  }
}
