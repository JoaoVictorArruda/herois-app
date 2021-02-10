import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/message/message_form/message_form_bloc.dart';
import 'package:herois/application/message/message_watcher/message_watcher_bloc.dart';
import 'package:herois/domain/contact/contact.dart';
import 'package:herois/domain/core/messages.dart';
import 'package:herois/domain/messages/message.dart';
import 'package:herois/presentation/core/saving_progress_overlay.dart';
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
                            messages[INSUFFICIENT_PERMISSIONS],
                          unableToUpdate: (_) =>
                            messages[UNABLE_TO_UPDATE],
                          unexpected: (_) =>
                            messages[UNEXPECTED],
                        ),
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
                  child: Row(
                    children: [
                      Material(
                        child: CachedNetworkImage(
                          placeholder: (context, url) => Container(
                          child: Image.asset(
                            "assets/images/no_profile_pic.png",
                            ),
                          ),
                          imageUrl: contact.photoUrl,
                          width: 35.0,
                          height: 35.0,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                        clipBehavior: Clip.hardEdge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                            contact.name.length > 20 ?
                            contact.name.substring(0, 20) + '...'
                            : contact.name,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            )
                        ),
                      ),
                    ],
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
              body: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MessageOverviewBody(photoUrl: contact.photoUrl),
                        MessageInputField(contact.userId.getOrCrash())
                      ],
                    )
                  ],
                ),
              ),
              bottomNavigationBar: HomeBottomNavigationBar(index: 0)
          ),
        ),
      ),
    );
  }
}
