import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/requests/request_failure.dart';
import 'package:herois/domain/requests_search/i_request_search_filter_repository.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';
import 'package:herois/infrastructure/core/firestore_helpers.dart';
import 'package:herois/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'request_search_filter_form_bloc.freezed.dart';
part 'request_search_filter_form_event.dart';
part 'request_search_filter_form_state.dart';

@injectable
class RequestSearchFilterFormBloc
    extends Bloc<RequestSearchFilterFormEvent, RequestSearchFilterFormState> {
  final IRequestSearchFilterRepository _requestSearchFilterRepository;

  RequestSearchFilterFormBloc(this._requestSearchFilterRepository)
      : super(RequestSearchFilterFormState.initial());

  @override
  Stream<RequestSearchFilterFormState> mapEventToState(
    RequestSearchFilterFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialRequestSearchFilterOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state,
          (initialRequestSearchFilter) {
            return state.copyWith(
              requestSearchFilter: initialRequestSearchFilter,
              isEditing: true,
            );
          },
        );
      },
      bloodTypeChanged: (e) async* {
        String bloodType = state.requestSearchFilter.bloodType.getOrCrash();
        final String clicked = '|${e.bloodType}|';
        if (bloodType.contains(clicked)) {
          bloodType = bloodType.replaceAll(clicked, '');
        } else {
          bloodType = '$bloodType$clicked';
        }
        if (bloodType.isEmpty) {
          bloodType = clicked;
        }
        yield state.copyWith(
          requestSearchFilter: state.requestSearchFilter
              .copyWith(bloodType: StringSingleLine(bloodType)),
          saveFailureOrSuccessOption: none(),
        );
      },
      distanceChanged: (e) async* {
        yield state.copyWith(
          requestSearchFilter: state.requestSearchFilter
              .copyWith(distance: StringSingleLine(e.distanceStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      localizationChanged: (e) async* {
        yield state.copyWith(
          requestSearchFilter: state.requestSearchFilter.copyWith(
              city: StringSingleLine(e.city),
              lat: StringSingleLine(e.lat),
              long: StringSingleLine(e.long)),
          saveFailureOrSuccessOption: none(),
        );
      },
      onlyCompatibleClicked: (e) async* {
        const bloods = {
          'A+': ['A+', 'AB+'],
          'A-': ['A+', 'A-', 'AB+', 'AB-'],
          'B+': ['B+', 'AB+'],
          'B-': ['B+', 'B-', 'AB+', 'AB-'],
          'AB+': ['AB+'],
          'AB-': ['AB+', 'AB-'],
          'O+': ['O+', 'O-'],
          'O-': ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'],
        };

        final info = await getIt<FirebaseFirestore>().getInfo();
        yield state.copyWith(
          requestSearchFilter: state.requestSearchFilter.copyWith(
              bloodType: StringSingleLine(
                  "|" + bloods[info.bloodType.getOrCrash()].join("||") + "|")),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<RequestFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.requestSearchFilter.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _requestSearchFilterRepository
                  .create(state.requestSearchFilter)
              : await _requestSearchFilterRepository
                  .update(state.requestSearchFilter);
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
