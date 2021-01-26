part of 'info_actor_bloc.dart';

@freezed
abstract class InfoActorEvent with _$InfoActorEvent {

  const factory InfoActorEvent.editProfile(Info info) = _EditProfile;


}
