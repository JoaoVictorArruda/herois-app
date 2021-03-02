part of 'info_actor_bloc.dart';

@freezed
abstract class InfoActorState with _$InfoActorState {
  const factory InfoActorState.initial() = Initial;

  const factory InfoActorState.actionInProgress() = ActionInProgress;

  const factory InfoActorState.editFailure(InfoFailure infoFailure) =
      EditFailure;

  const factory InfoActorState.editSuccess() = EditSuccess;
}
