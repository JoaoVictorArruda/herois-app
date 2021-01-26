import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/info/info_actor/info_actor_bloc.dart';
import 'package:herois/application/info/info_watcher/info_watcher_bloc.dart';
import 'package:herois/presentation/info/info_overview/widgets/info_overview_body_widget.dart';
import 'package:herois/presentation/requests/request_overview/widgets/request_overview_body_widget.dart';
import 'package:herois/presentation/home/widgets/home_bottom_navigation_bar.dart';
import 'package:herois/application/requests/request_actor/request_actor_bloc.dart';
import 'package:herois/application/requests/request_watcher/request_watcher_bloc.dart';
import 'package:herois/presentation/routes/router.gr.dart';

import '../../../injection.dart';

class InfoOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InfoWatcherBloc>(
          create: (context) => getIt<InfoWatcherBloc>()
            ..add(const InfoWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<InfoActorBloc>(
          create: (context) => getIt<InfoActorBloc>(),
        ),
        BlocProvider<RequestWatcherBloc>(
          create: (context) => getIt<RequestWatcherBloc>()
            ..add(const RequestWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<RequestActorBloc>(
          create: (context) => getIt<RequestActorBloc>(),
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
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).replace(Routes.signInPage),
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
            body: Column(
              children: [
                InfoOverviewBody(),
                RequestOverviewBody()
              ],
            ),
            bottomNavigationBar: const HomeBottomNavigationBar(index: 3)
        ),
      ),
    );
  }
}
