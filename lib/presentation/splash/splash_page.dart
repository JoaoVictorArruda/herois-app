import 'package:auto_route/auto_route.dart' hide BuildContext;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:herois/presentation/routes/router.gr.dart';
import 'package:herois/presentation/sign_in/system_presentation.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
              ExtendedNavigator.of(context).popUntilRoot();
              ExtendedNavigator.of(context).replace(Routes.infoOverviewPage);
          },
          unauthenticated: (_) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SystemPresentation(),
              ),
                  (route) => false,
            );
          }
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
