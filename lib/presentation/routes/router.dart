import 'package:auto_route/auto_route_annotations.dart';
import 'package:herois/presentation/info/info_form/info_form_page.dart';
import 'package:herois/presentation/info/info_overview/info_overview_page.dart';
import 'package:herois/presentation/info/other_info_overview/other_info_overview_page.dart';
import 'package:herois/presentation/contact/contact_overview/contact_overview_page.dart';
import 'package:herois/presentation/messages/messages_overview/messages_overview_page.dart';
import 'package:herois/presentation/notes/note_form/note_form_page.dart';
import 'package:herois/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:herois/presentation/requests/request_form/request_form_page.dart';
import 'package:herois/presentation/requests/request_overview/request_overview_page.dart';
import 'package:herois/presentation/requests_search/request_search_filter/request_search_filter_form.dart';
import 'package:herois/presentation/requests_search/request_search_overview/request_search_overview_page.dart';
import 'package:herois/presentation/sign_in/sign_in_page.dart';
import 'package:herois/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: NotesOverviewPage),
    MaterialRoute(page: NoteFormPage, fullscreenDialog: true),
    MaterialRoute(page: InfoOverviewPage),
    MaterialRoute(page: InfoFormPage, fullscreenDialog: true),
    MaterialRoute(page: RequestsOverviewPage),
    MaterialRoute(page: RequestFormPage, fullscreenDialog: true),
    MaterialRoute(page: RequestSearchOverviewPage),
    MaterialRoute(page: RequestSearchFilterFormPage, fullscreenDialog: true),
    MaterialRoute(page: OtherInfoOverviewPage),
    MaterialRoute(page: ContactOverviewPage),
    MaterialRoute(page: MessageOverviewPage, fullscreenDialog: true),
  ],
)
class $Router {}
