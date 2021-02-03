import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:herois/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:herois/domain/core/messages.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => messages[CANCELLED_BY_USER],
                  serverError: (_) => messages[SERVER_ERROR],
                  emailAlreadyInUse: (_) => messages[EMAIL_ALREADY_IN_USE],
                  invalidEmailAndPasswordCombination: (_) =>
                      messages[INVALID_EMAIL_AND_PASSWORD_COMBINATION],
                ),
              ).show(context);
            },
            (_) {
              ExtendedNavigator.of(context).replace(Routes.infoOverviewPage);
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/logo_login.png",
                        ),
                        Text(
                            "\n LOGIN & CADASTRO \n",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Column(
                            children: <Widget>[
                              SignInButton(
                                Buttons.Google,
                                text: "Google",
                                onPressed: () {
                                  context.bloc<SignInFormBloc>().add(
                                      const SignInFormEvent
                                          .signInWithGooglePressed());
                                },
                              ),
                              // SignInButton(
                              //   Buttons.Facebook,
                              //   text: "Facebook",
                              //   onPressed: () {
                              //     context.bloc<SignInFormBloc>().add(
                              //         const SignInFormEvent
                              //             .signInWithFacebookPressed());
                              //   },
                              // ),
                              // SignInButtonBuilder(
                              //   text: 'Telefone',
                              //   icon: Icons.phone,
                              //   onPressed: () {},
                              //   backgroundColor: Colors.blueGrey[700],
                              // ),
                            ],
                          ),
                        ),
                        if (state.isSubmitting) ...[
                          const SizedBox(height: 8),
                          const CircularProgressIndicator(
                              backgroundColor: Color(0xffffffff)),
                        ]
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
