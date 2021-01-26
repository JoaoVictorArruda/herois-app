import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:herois/domain/auth/i_auth_facade.dart';
import 'package:herois/domain/core/errors.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:herois/domain/requests/i_request_repository.dart';
import 'package:herois/domain/requests_search/request_search.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';
import 'package:herois/infrastructure/requests_search/request_search_filter_dtos.dart';
import 'package:herois/injection.dart';
import 'package:herois/infrastructure/core/firestore_helpers.dart';

part 'request_search_watcher_event.dart';

part 'request_search_watcher_state.dart';

part 'request_search_watcher_bloc.freezed.dart';

@injectable
class RequestSearchWatcherBloc extends Bloc<RequestSearchWatcherEvent, RequestSearchWatcherState> {
  final IRequestRepository _requestRepository;

  RequestSearchWatcherBloc(this._requestRepository) : super(const RequestSearchWatcherState.initial());

  StreamSubscription<Either<RequestFailure, KtList<RequestSearch>>> _requestSearchStreamSubscription;

  @override
  Stream<RequestSearchWatcherState> mapEventToState(
    RequestSearchWatcherEvent event,
  ) async* {
    yield* event.map(
      watchNearbyStarted: (e) async* {
        final userDoc = await getIt<FirebaseFirestore>().userDocument();
        final query = await userDoc.requestSearchFilterCollection.get();
        final RequestSearchFilter requestSearchFilter = RequestSearchFilterDto.fromFirestore(query.docs[0]).toDomain();
        yield const RequestSearchWatcherState.loadInProgress();
        await _requestSearchStreamSubscription?.cancel();
        _requestSearchStreamSubscription = _requestRepository
            .watchNearby(requestSearchFilter)
            .listen((request) => add(RequestSearchWatcherEvent.requestSearchReceived(request, requestSearchFilter)));
      },
      requestSearchReceived: (e) async* {
        final userOption = await getIt<IAuthFacade>().getSignedInUser();
        final user = userOption.getOrElse(() => throw NotAuthenticatedError());
        yield e.failureOrRequest.fold(
              (f) => RequestSearchWatcherState.loadFailure(f),
              (request) => RequestSearchWatcherState.loadSuccess(request, user.id.getOrCrash(), e.requestSearchFilter),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _requestSearchStreamSubscription.cancel();
    return super.close();
  }
}
