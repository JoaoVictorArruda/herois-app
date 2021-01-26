import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:herois/domain/messages/message.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key key,
    @required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    // final messageActorBloc = context.bloc<MessageActorBloc>();
    return GestureDetector(
      onTap: () {
        // ExtendedNavigator.of(context).pushMessageFormPage(editedMessage: message);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
          child: Container(
            margin: const EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                        const Icon(Icons.date_range),
                          Text(": ${message.dateTime.toIso8601String()}", style: const TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.message),
                          Text(": ${message.text.getOrCrash()}", overflow: TextOverflow.ellipsis ,style: const TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.person),
                          Text(": ${message.sentByMe.toString()}", overflow: TextOverflow.ellipsis ,style: const TextStyle(fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MessageActionOverviewBody extends StatelessWidget {
  const MessageActionOverviewBody({
    @required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    // final messageActorBloc = context.bloc<MessageActorBloc>();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.create),
            onPressed: () {
              // ExtendedNavigator.of(context).pushMessageFormPage(editedMessage: message);
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // messageActorBloc.add(MessageActorEvent.deleted(message));
            },
          ),
        ],
      ),
    );
  }
}
