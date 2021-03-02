import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/info/i_info_repository.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/info/info_failure.dart';
import 'package:injectable/injectable.dart';

part 'info_actor_bloc.freezed.dart';
part 'info_actor_event.dart';
part 'info_actor_state.dart';

@injectable
class InfoActorBloc extends Bloc<InfoActorEvent, InfoActorState> {
  final IInfoRepository _infoRepository;

  InfoActorBloc(this._infoRepository) : super(const InfoActorState.initial());

  @override
  Stream<InfoActorState> mapEventToState(
    InfoActorEvent event,
  ) async* {
    // We have only one InfoActorEvent - there's no union type
    yield const InfoActorState.actionInProgress();
    final possibleFailure = await _infoRepository.update(event.info);
    yield possibleFailure.fold(
      (f) => InfoActorState.editFailure(f),
      // Yielding unchanged state - nothing will be emitted from the BLoC
      (_) => const InfoActorState.editSuccess(),
    );
  }
}
