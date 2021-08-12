import 'package:auto_route/auto_route.dart' hide BuildContext;
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:herois/application/info/info_actor/info_actor_bloc.dart';
import 'package:herois/application/info/info_watcher/info_watcher_bloc.dart';
import 'package:herois/injection.dart';
import 'package:herois/presentation/home/widgets/home_bottom_navigation_bar.dart';
import 'package:herois/presentation/info/info_search_overview/widgets/info_search_input_field.dart';
import 'package:herois/presentation/info/info_search_overview/widgets/info_search_overview_body.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class InfoSearchOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InfoWatcherBloc>(
          create: (context) => getIt<InfoWatcherBloc>()
            ..add(const InfoWatcherEvent.watchInfoSearchStarted()),
        ),
        // BlocProvider<NoteActorBloc>(
        //   create: (context) => getIt<NoteActorBloc>(),
        // ),
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
          // BlocListener<NoteActorBloc, NoteActorState>(
          //   listener: (context, state) {
          //     state.maybeMap(
          //       deleteFailure: (state) {
          //         FlushbarHelper.createError(
          //           duration: const Duration(seconds: 5),
          //           message: state.noteFailure.map(
          //             unexpected: (_) =>
          //             'Unexpected error occured while deleting, please contact support.',
          //             insufficientPermission: (_) =>
          //             'Insufficient permissions ❌',
          //             unableToUpdate: (_) => 'Impossible error',
          //           ),
          //         ).show(context);
          //       },
          //       orElse: () {},
          //     );
          //   },
          // ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: InfoSearchInputField(),
            // actions: <Widget>[
              // UncompletedSwitch(),
            // ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // InfoSearchInputField(),
                InfoSearchOverviewBody(),
              ],
            ),
          ),
          bottomNavigationBar: const HomeBottomNavigationBar(index: 1),
        ),
      ),
    );
  }
}
