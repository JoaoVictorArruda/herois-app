// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/contact/contact_repository.dart';
import 'application/contact/contact_watcher/contact_watcher_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'infrastructure/contact/i_contact_repository.dart';
import 'domain/info/i_info_repository.dart';
import 'domain/messages/i_message_repository.dart';
import 'domain/requests/i_request_repository.dart';
import 'domain/requests_search/i_request_search_filter_repository.dart';
import 'application/info/info_actor/info_actor_bloc.dart';
import 'application/info/info_form/info_form_bloc.dart';
import 'infrastructure/info/info_repository.dart';
import 'application/info/info_watcher/info_watcher_bloc.dart';
import 'application/message/message_form/message_form_bloc.dart';
import 'infrastructure/messages/message_repository.dart';
import 'application/message/message_watcher/message_watcher_bloc.dart';
import 'infrastructure/core/notifications.dart';
import 'application/requests/request_actor/request_actor_bloc.dart';
import 'application/requests/request_form/request_form_bloc.dart';
import 'infrastructure/requests/request_repository.dart';
import 'application/requests_search/request_search_filter_form/request_search_filter_form_bloc.dart';
import 'infrastructure/requests_search/request_search_filter_repository.dart';
import 'application/requests_search/request_search_watcher/request_search_watcher_bloc.dart';
import 'application/requests/request_watcher/request_watcher_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<Geoflutterfire>(
      () => firebaseInjectableModule.geoflutterfire);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IContactRepository>(
      () => ContactRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IInfoRepository>(
      () => InfoRepository(get<FirebaseFirestore>(), get<Geoflutterfire>()));
  gh.lazySingleton<IMessageRepository>(
      () => MessageRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IRequestRepository>(
      () => RequestRepository(get<FirebaseFirestore>(), get<Geoflutterfire>()));
  gh.lazySingleton<IRequestSearchFilterRepository>(
      () => RequestSearchFilterRepository(get<FirebaseFirestore>()));
  gh.factory<InfoActorBloc>(() => InfoActorBloc(get<IInfoRepository>()));
  gh.factory<InfoFormBloc>(() => InfoFormBloc(get<IInfoRepository>()));
  gh.factory<InfoWatcherBloc>(() => InfoWatcherBloc(get<IInfoRepository>()));
  gh.factory<MessageFormBloc>(() => MessageFormBloc(get<IMessageRepository>()));
  gh.factory<MessageWatcherBloc>(
      () => MessageWatcherBloc(get<IMessageRepository>()));
  gh.factory<Notifications>(() => Notifications(get<FirebaseFirestore>()));
  gh.factory<RequestActorBloc>(
      () => RequestActorBloc(get<IRequestRepository>()));
  gh.factory<RequestFormBloc>(() => RequestFormBloc(get<IRequestRepository>()));
  gh.factory<RequestSearchFilterFormBloc>(
      () => RequestSearchFilterFormBloc(get<IRequestSearchFilterRepository>()));
  gh.factory<RequestSearchWatcherBloc>(
      () => RequestSearchWatcherBloc(get<IRequestRepository>()));
  gh.factory<RequestWatcherBloc>(
      () => RequestWatcherBloc(get<IRequestRepository>()));
  gh.factory<ContactWatcherBloc>(
      () => ContactWatcherBloc(get<IContactRepository>()));
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<Notifications>(),
      ));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
