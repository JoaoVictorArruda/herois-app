import 'dart:async';
import 'package:kt_dart/collection.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/i_info_repository.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/info/info_failure.dart';
import 'package:herois/domain/info/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'info_form_event.dart';

part 'info_form_state.dart';

part 'info_form_bloc.freezed.dart';

@injectable
class InfoFormBloc extends Bloc<InfoFormEvent, InfoFormState> {
  final IInfoRepository _infoRepository;

  InfoFormBloc(this._infoRepository) : super(InfoFormState.initial());

  @override
  Stream<InfoFormState> mapEventToState(
    InfoFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialInfoOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state,
          (initialInfo) {
            return state.copyWith(
              info: initialInfo,
              isEditing: true,
            );
          },
        );
      },
      bloodTypeChanged: (e) async* {
        yield state.copyWith(
          info: state.info.copyWith(bloodType: BloodType(e.bloodType)),
          saveFailureOrSuccessOption: none(),
        );
      },
      photoUrlChanged: (e) async* {
        yield state.copyWith(
          info: state.info.copyWith(photoUrl: e.photoUrl),
          saveFailureOrSuccessOption: none(),
        );
      },
      bioChanged: (e) async* {
        yield state.copyWith(
          info: state.info.copyWith(bio: InfoBio(e.bioStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          info: state.info.copyWith(name: StringSingleLine(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      isVisibleChanged: (e) async* {
        yield state.copyWith(
          info: state.info.copyWith(isVisible: e.isVisibleBool),
          saveFailureOrSuccessOption: none(),
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          info: state.info.copyWith(gender: Gender(e.genderStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      localizationChanged: (e) async* {
        yield state.copyWith(
          info: state.info.copyWith(city: StringSingleLine(e.city), lat: StringSingleLine(e.lat), long: StringSingleLine(e.long)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<InfoFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.info.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _infoRepository.update(state.info)
              : await _infoRepository.create(state.info);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
