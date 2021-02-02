import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:herois/application/info/info_actor/info_actor_bloc.dart';
import 'package:herois/application/requests/request_actor/request_actor_bloc.dart';
import 'package:herois/application/requests_search/request_search_watcher/request_search_watcher_bloc.dart';
import 'package:herois/injection.dart';
import 'package:herois/presentation/home/widgets/home_bottom_navigation_bar.dart';
import 'package:herois/presentation/requests_search/request_search_overview/widgets/filter_request_widget.dart';
import 'package:herois/presentation/requests_search/request_search_overview/widgets/request_search_overview_body_page.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class RequestSearchOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RequestSearchWatcherBloc>(
          create: (context) => getIt<RequestSearchWatcherBloc>()
            ..add(const RequestSearchWatcherEvent.watchNearbyStarted()),
        ),
        BlocProvider<RequestActorBloc>(
          create: (context) => getIt<RequestActorBloc>(),
        ),
        BlocProvider<InfoActorBloc>(
          create: (context) => getIt<InfoActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).replace(Routes.signInPage),
                orElse: () {},
              );
            },
          ),
          BlocListener<InfoActorBloc, InfoActorState>(
            listener: (context, state) {
              state.maybeMap(
                editFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.infoFailure.map(
                      unexpected: (_) =>
                      'Unexpected error occured while deleting, please contact support.',
                      insufficientPermissions: (_) =>
                      'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                      unavailableToDonate: (_) => 'Unavaiable to donate',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<RequestActorBloc, RequestActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.requestFailure.map(
                      unexpected: (_) =>
                      'Unexpected error occured while deleting, please contact support.',
                      insufficientPermission: (_) =>
                      'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
                'Requisições',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                )
            ),
            actions: [
              FilterRequestWidget()
            ],
          ),
            body: Column(
              children: [
                RequestSearchOverviewBody(),
              ],
            ),
            bottomNavigationBar: const HomeBottomNavigationBar(index: 2)
        ),
      ),
    );
  }
}
