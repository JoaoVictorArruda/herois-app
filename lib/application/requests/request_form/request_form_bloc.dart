import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/value_objects.dart';
import 'package:herois/domain/requests/i_request_repository.dart';
import 'package:herois/domain/requests/request.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'request_form_event.dart';

part 'request_form_state.dart';

part 'request_form_bloc.freezed.dart';

@injectable
class RequestFormBloc extends Bloc<RequestFormEvent, RequestFormState> {
  final IRequestRepository _requestRepository;

  RequestFormBloc(this._requestRepository) : super(RequestFormState.initial());

  @override
  Stream<RequestFormState> mapEventToState(
    RequestFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialRequestOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state,
          (initialRequest) {
            return state.copyWith(
              request: initialRequest,
              isEditing: true,
            );
          },
        );
      },
      bloodTypeChanged: (e) async* {
        yield state.copyWith(
          request: state.request.copyWith(bloodType: BloodType(e.bloodType)),
          saveFailureOrSuccessOption: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          request: state.request.copyWith(name: StringSingleLine(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      isOpenChanged: (e) async* {
        yield state.copyWith(
          request: state.request.copyWith(isOpen: e.isOpen),
          saveFailureOrSuccessOption: none(),
        );
      },
      photoUrlChanged: (e) async* {
        yield state.copyWith(
          request: state.request.copyWith(photoUrl: e.photoUrl),
          saveFailureOrSuccessOption: none(),
        );
      },
      localizationChanged: (e) async* {
        yield state.copyWith(
          request: state.request.copyWith(city: StringSingleLine(e.city), lat: StringSingleLine(e.lat), long: StringSingleLine(e.long)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<RequestFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.request.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _requestRepository.update(state.request)
              : await _requestRepository.create(state.request);
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
