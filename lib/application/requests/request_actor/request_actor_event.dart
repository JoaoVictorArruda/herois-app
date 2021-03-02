part of 'request_actor_bloc.dart';

@freezed
abstract class RequestActorEvent with _$RequestActorEvent {
  const factory RequestActorEvent.editRequest(Request request) = _EditRequest;

  const factory RequestActorEvent.deleted(Request request) = _Deleted;
}
