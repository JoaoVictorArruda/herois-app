// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/contact/contact.dart';
import '../../domain/info/info.dart';
import '../../domain/messages/message.dart';
import '../../domain/requests/request.dart';
import '../../domain/requests_search/request_search_filter.dart';
import '../contact/contact_overview/contact_overview_page.dart';
import '../info/info_form/info_form_page.dart';
import '../info/info_overview/info_overview_page.dart';
import '../info/other_info_overview/other_info_overview_page.dart';
import '../learning/learning_overview/learning_overview_page.dart';
import '../messages/messages_overview/messages_overview_page.dart';
import '../requests/request_form/request_form_page.dart';
import '../requests/request_overview/request_overview_page.dart';
import '../requests_search/request_search_filter_form/request_search_filter_form.dart';
import '../requests_search/request_search_overview/request_search_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../sign_in/system_presentation.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String systemPresentation = '/system-presentation';
  static const String signInPage = '/sign-in-page';
  static const String infoOverviewPage = '/info-overview-page';
  static const String infoFormPage = '/info-form-page';
  static const String requestsOverviewPage = '/requests-overview-page';
  static const String requestFormPage = '/request-form-page';
  static const String requestSearchOverviewPage =
      '/request-search-overview-page';
  static const String requestSearchFilterFormPage =
      '/request-search-filter-form-page';
  static const String otherInfoOverviewPage = '/other-info-overview-page';
  static const String contactOverviewPage = '/contact-overview-page';
  static const String messageOverviewPage = '/message-overview-page';
  static const String learningOverviewPage = '/learning-overview-page';
  static const all = <String>{
    splashPage,
    systemPresentation,
    signInPage,
    infoOverviewPage,
    infoFormPage,
    requestsOverviewPage,
    requestFormPage,
    requestSearchOverviewPage,
    requestSearchFilterFormPage,
    otherInfoOverviewPage,
    contactOverviewPage,
    messageOverviewPage,
    learningOverviewPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.systemPresentation, page: SystemPresentation),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.infoOverviewPage, page: InfoOverviewPage),
    RouteDef(Routes.infoFormPage, page: InfoFormPage),
    RouteDef(Routes.requestsOverviewPage, page: RequestsOverviewPage),
    RouteDef(Routes.requestFormPage, page: RequestFormPage),
    RouteDef(Routes.requestSearchOverviewPage, page: RequestSearchOverviewPage),
    RouteDef(Routes.requestSearchFilterFormPage,
        page: RequestSearchFilterFormPage),
    RouteDef(Routes.otherInfoOverviewPage, page: OtherInfoOverviewPage),
    RouteDef(Routes.contactOverviewPage, page: ContactOverviewPage),
    RouteDef(Routes.messageOverviewPage, page: MessageOverviewPage),
    RouteDef(Routes.learningOverviewPage, page: LearningOverviewPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SystemPresentation: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SystemPresentation(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    InfoOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => InfoOverviewPage(),
        settings: data,
      );
    },
    InfoFormPage: (data) {
      final args = data.getArgs<InfoFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => InfoFormPage(
          key: args.key,
          editedInfo: args.editedInfo,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    RequestsOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RequestsOverviewPage(),
        settings: data,
      );
    },
    RequestFormPage: (data) {
      final args = data.getArgs<RequestFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => RequestFormPage(
          key: args.key,
          editedRequest: args.editedRequest,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    RequestSearchOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RequestSearchOverviewPage(),
        settings: data,
      );
    },
    RequestSearchFilterFormPage: (data) {
      final args =
          data.getArgs<RequestSearchFilterFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => RequestSearchFilterFormPage(
          key: args.key,
          editedRequestSearchFilter: args.editedRequestSearchFilter,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    OtherInfoOverviewPage: (data) {
      final args = data.getArgs<OtherInfoOverviewPageArguments>(
        orElse: () => OtherInfoOverviewPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => OtherInfoOverviewPage(
          key: args.key,
          userId: args.userId,
          index: args.index,
        ),
        settings: data,
      );
    },
    ContactOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ContactOverviewPage(),
        settings: data,
      );
    },
    MessageOverviewPage: (data) {
      final args = data.getArgs<MessageOverviewPageArguments>(
        orElse: () => MessageOverviewPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MessageOverviewPage(
          key: args.key,
          contact: args.contact,
          editedMessage: args.editedMessage,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    LearningOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LearningOverviewPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSystemPresentation() =>
      push<dynamic>(Routes.systemPresentation);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushInfoOverviewPage() =>
      push<dynamic>(Routes.infoOverviewPage);

  Future<dynamic> pushInfoFormPage({
    Key key,
    @required Info editedInfo,
  }) =>
      push<dynamic>(
        Routes.infoFormPage,
        arguments: InfoFormPageArguments(key: key, editedInfo: editedInfo),
      );

  Future<dynamic> pushRequestsOverviewPage() =>
      push<dynamic>(Routes.requestsOverviewPage);

  Future<dynamic> pushRequestFormPage({
    Key key,
    @required Request editedRequest,
  }) =>
      push<dynamic>(
        Routes.requestFormPage,
        arguments:
            RequestFormPageArguments(key: key, editedRequest: editedRequest),
      );

  Future<dynamic> pushRequestSearchOverviewPage() =>
      push<dynamic>(Routes.requestSearchOverviewPage);

  Future<dynamic> pushRequestSearchFilterFormPage({
    Key key,
    @required RequestSearchFilter editedRequestSearchFilter,
  }) =>
      push<dynamic>(
        Routes.requestSearchFilterFormPage,
        arguments: RequestSearchFilterFormPageArguments(
            key: key, editedRequestSearchFilter: editedRequestSearchFilter),
      );

  Future<dynamic> pushOtherInfoOverviewPage({
    Key key,
    String userId,
    int index,
  }) =>
      push<dynamic>(
        Routes.otherInfoOverviewPage,
        arguments: OtherInfoOverviewPageArguments(
            key: key, userId: userId, index: index),
      );

  Future<dynamic> pushContactOverviewPage() =>
      push<dynamic>(Routes.contactOverviewPage);

  Future<dynamic> pushMessageOverviewPage({
    Key key,
    Contact contact,
    Message editedMessage,
  }) =>
      push<dynamic>(
        Routes.messageOverviewPage,
        arguments: MessageOverviewPageArguments(
            key: key, contact: contact, editedMessage: editedMessage),
      );

  Future<dynamic> pushLearningOverviewPage() =>
      push<dynamic>(Routes.learningOverviewPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// InfoFormPage arguments holder class
class InfoFormPageArguments {
  final Key key;
  final Info editedInfo;
  InfoFormPageArguments({this.key, @required this.editedInfo});
}

/// RequestFormPage arguments holder class
class RequestFormPageArguments {
  final Key key;
  final Request editedRequest;
  RequestFormPageArguments({this.key, @required this.editedRequest});
}

/// RequestSearchFilterFormPage arguments holder class
class RequestSearchFilterFormPageArguments {
  final Key key;
  final RequestSearchFilter editedRequestSearchFilter;
  RequestSearchFilterFormPageArguments(
      {this.key, @required this.editedRequestSearchFilter});
}

/// OtherInfoOverviewPage arguments holder class
class OtherInfoOverviewPageArguments {
  final Key key;
  final String userId;
  final int index;
  OtherInfoOverviewPageArguments({this.key, this.userId, this.index});
}

/// MessageOverviewPage arguments holder class
class MessageOverviewPageArguments {
  final Key key;
  final Contact contact;
  final Message editedMessage;
  MessageOverviewPageArguments({this.key, this.contact, this.editedMessage});
}
