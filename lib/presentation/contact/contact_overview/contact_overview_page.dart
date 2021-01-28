import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/contact/contact_watcher/contact_watcher_bloc.dart';
import 'package:herois/presentation/home/widgets/home_bottom_navigation_bar.dart';
import 'package:herois/presentation/contact/contact_overview/widgets/contact_overview_body_widget.dart';
import 'package:herois/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../injection.dart';

class ContactOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContactWatcherBloc>(
          create: (context) => getIt<ContactWatcherBloc>()
            ..add(const ContactWatcherEvent.watchAllStarted()),
        ),
        // BlocProvider<InfoActorBloc>(
        //   create: (context) => getIt<InfoActorBloc>(),
        // ),
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
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(
                'Mensagens',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                )
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
          ),
            body: Column(
              children: [
                ContactOverviewBody(),
              ],
            ),
            bottomNavigationBar: const HomeBottomNavigationBar(index: 0)
        ),
      ),
    );
  }
}
