import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/message/message_watcher/message_watcher_bloc.dart';
import 'package:herois/presentation/messages/messages_overview/widgets/message_card_widget.dart';

class MessageOverviewBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Widget body = Column(
      children: <Widget>[
        BlocBuilder<MessageWatcherBloc, MessageWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (state) => Container(),
              loadInProgress: (state) => const Center(
                child: CircularProgressIndicator(),
              ),
              // (_) => Container(),
              loadSuccess: (state) {
                  return SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final message = state.messages[index];
                        if (message.failureOption.isSome()) {
                          return const Text("ErrorCard");
                        }
                        return MessageCard(message: message);
                      },
                      itemCount: state.messages.size,
                    ),
                  );
              },
              loadFailure: (state) {
                return const Text("CriticalFailureDisplay");
                // return CriticalFailureDisplay(
                //   failure: state.contactFailure,
                // );
              },
            );
          },
        ),
      ],
    );
    return body;
  }
}
