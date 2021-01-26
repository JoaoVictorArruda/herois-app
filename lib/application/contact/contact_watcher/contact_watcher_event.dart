part of 'contact_watcher_bloc.dart';

@freezed
abstract class ContactWatcherEvent with _$ContactWatcherEvent {
  const factory ContactWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ContactWatcherEvent.contactsReceived(
      Either<ContactFailure, KtList<Contact>> failureOrContacts) = _ContactsReceived;
}
