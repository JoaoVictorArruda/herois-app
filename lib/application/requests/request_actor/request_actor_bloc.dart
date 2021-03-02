import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/requests/i_request_repository.dart';
import 'package:herois/domain/requests/request.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:injectable/injectable.dart';

part 'request_actor_bloc.freezed.dart';
part 'request_actor_event.dart';
part 'request_actor_state.dart';

@injectable
class RequestActorBloc extends Bloc<RequestActorEvent, RequestActorState> {
  final IRequestRepository _requestRepository;

  RequestActorBloc(this._requestRepository)
      : super(const RequestActorState.initial());

  @override
  Stream<RequestActorState> mapEventToState(
    RequestActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {
        yield const RequestActorState.actionInProgress();
        final possibleFailure = await _requestRepository.delete(event.request);
        yield possibleFailure.fold(
          (f) => RequestActorState.deleteFailure(f),
          // Yielding unchanged state - nothing will be emitted from the BLoC
          (_) => const RequestActorState.deleteSuccess(),
        );
      },
      editRequest: (e) async* {
        yield const RequestActorState.actionInProgress();
        final possibleFailure = await _requestRepository.update(event.request);
        yield possibleFailure.fold(
          (f) => RequestActorState.editFailure(f),
          // Yielding unchanged state - nothing will be emitted from the BLoC
          (_) => const RequestActorState.editSuccess(),
        );
      },
    );
  }
}
