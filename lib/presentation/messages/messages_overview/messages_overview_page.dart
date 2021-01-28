import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/message/message_form/message_form_bloc.dart';
import 'package:herois/application/message/message_watcher/message_watcher_bloc.dart';
import 'package:herois/domain/contact/contact.dart';
import 'package:herois/domain/messages/message.dart';
import 'package:herois/presentation/home/widgets/home_bottom_navigation_bar.dart';
import 'package:herois/presentation/info/info_form/info_form_page.dart';
import 'package:herois/presentation/messages/messages_overview/widgets/message_input_widget.dart';
import 'package:herois/presentation/messages/messages_overview/widgets/messages_overview_body_widget.dart';
import 'package:herois/presentation/routes/router.gr.dart';


import '../../../injection.dart';

class MessageOverviewPage extends StatelessWidget {
  final Contact contact;
  
  final Message editedMessage;

  const MessageOverviewPage({Key key, this.contact, this.editedMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MessageWatcherBloc>(
          create: (context) => getIt<MessageWatcherBloc>()
            ..add(MessageWatcherEvent.watchAllStarted(contact.userId.getOrCrash())),
        ),
        BlocProvider(
          create: (context) => getIt<MessageFormBloc>()
            ..add(MessageFormEvent.initialized(optionOf(editedMessage))),
          child: BlocConsumer<MessageFormBloc, MessageFormState>(
            listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(
                    () {},
                    (either) {
                  either.fold(
                        (failure) {
                      FlushbarHelper.createError(
                        duration: const Duration(seconds: 5),
                        message: failure.map(
                          // Use localized strings here in your apps
                            insufficientPermission: (_) =>
                            'Insufficient permissions ❌',
                            unableToUpdate: (_) =>
                            "Couldn't update the note. Was it deleted from another device?",
                            unexpected: (_) =>
                            'Unexpected error occured, please contact support.'),
                      ).show(context);
                    },
                        (_) {
                      // ExtendedNavigator.of(context).pushMessageOverviewPage();
                    },
                  );
                },
              );
            },
            buildWhen: (p, c) => p.isSaving != c.isSaving,
            builder: (context, state) {
              return Stack(
                children: <Widget>[
                  SavingInProgressOverlay(isSaving: state.isSaving),
                ],
              );
            },
          ),
        )
        // BlocProvider<MessageActorBloc>(
        //   create: (context) => getIt<MessageActorBloc>(),
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
        child: SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: AppBar(
                title: GestureDetector(
                  onTap: () {
                    ExtendedNavigator.of(context).pushOtherInfoOverviewPage(userId: contact.userId.getOrCrash(), index: 0);
                  },
                  child: Text(
                      contact.name,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      )
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                // centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              body: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MessageOverviewBody(),
                      MessageInputField(contact.userId.getOrCrash())
                    ],
                  )
                ],
              ),
              bottomNavigationBar: HomeBottomNavigationBar(index: 0)
          ),
        ),
      ),
    );
  }
}
