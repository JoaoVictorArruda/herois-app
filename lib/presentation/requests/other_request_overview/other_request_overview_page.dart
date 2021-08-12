import 'package:auto_route/auto_route.dart' hide BuildContext;
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:herois/application/requests/request_actor/request_actor_bloc.dart';
import 'package:herois/application/requests/request_watcher/request_watcher_bloc.dart';
import 'package:herois/injection.dart';
import 'package:herois/presentation/home/widgets/home_bottom_navigation_bar.dart';
import 'package:herois/presentation/requests/other_request_overview/widgets/other_request_overview_body_widget.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class OtherRequestsOverviewPage extends StatelessWidget {

  final String userId;

  final int index;

  const OtherRequestsOverviewPage({Key key, this.userId, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RequestWatcherBloc>(
          create: (context) => getIt<RequestWatcherBloc>()
            ..add(RequestWatcherEvent.watchOtherUserStarted(userId)),
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
          ),
        ],
        child: Scaffold(
            body: Column(
              children: [
                OtherRequestOverviewBody(),
              ],
            ),
            bottomNavigationBar: const HomeBottomNavigationBar(index: 3)
        ),
      ),
    );
  }
}
