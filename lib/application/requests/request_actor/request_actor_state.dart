part of 'request_actor_bloc.dart';

@freezed
abstract class RequestActorState with _$RequestActorState {
  const factory RequestActorState.initial() = Initial;

  const factory RequestActorState.actionInProgress() = ActionInProgress;

  const factory RequestActorState.editFailure(RequestFailure requestFailure) =
      EditFailure;

  const factory RequestActorState.deleteFailure(RequestFailure requestFailure) =
      DeleteFailure;

  const factory RequestActorState.editSuccess() = EditSuccess;

  const factory RequestActorState.deleteSuccess() = DeleteSuccess;
}
