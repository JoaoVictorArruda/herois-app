import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/contact/contact.dart';
import 'package:herois/domain/contact/contact_failure.dart';
import 'package:herois/infrastructure/contact/i_contact_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'contact_watcher_bloc.freezed.dart';
part 'contact_watcher_event.dart';
part 'contact_watcher_state.dart';

@injectable
class ContactWatcherBloc
    extends Bloc<ContactWatcherEvent, ContactWatcherState> {
  final IContactRepository _contactRepository;

  ContactWatcherBloc(this._contactRepository)
      : super(const ContactWatcherState.initial());

  StreamSubscription<Either<ContactFailure, KtList<Contact>>>
      _contactStreamSubscription;

  @override
  Stream<ContactWatcherState> mapEventToState(
    ContactWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ContactWatcherState.loadInProgress();
        await _contactStreamSubscription?.cancel();
        _contactStreamSubscription = _contactRepository.watchAll().listen(
              (failureOrContacts) =>
                  add(ContactWatcherEvent.contactsReceived(failureOrContacts)),
            );
      },
      contactsReceived: (e) async* {
        yield e.failureOrContacts.fold(
          (f) => ContactWatcherState.loadFailure(f),
          (contacts) => ContactWatcherState.loadSuccess(contacts),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _contactStreamSubscription?.cancel();
    return super.close();
  }
}
