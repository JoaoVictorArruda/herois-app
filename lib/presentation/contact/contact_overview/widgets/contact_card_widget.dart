import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:herois/domain/contact/contact.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key key,
    @required this.contact,
  }) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    // final contactActorBloc = context.bloc<ContactActorBloc>();
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).pushMessageOverviewPage(userId: contact.userId.getOrCrash());
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
                        const Icon(Icons.person),
                          Text(": ${contact.userId.getOrCrash()}", style: const TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on),
                          Text(": ${contact.lastMessage.getOrCrash()}", overflow: TextOverflow.ellipsis ,style: const TextStyle(fontSize: 18)),
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

class ContactActionOverviewBody extends StatelessWidget {
  const ContactActionOverviewBody({
    @required this.contact,
  });

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    // final contactActorBloc = context.bloc<ContactActorBloc>();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.create),
            onPressed: () {
              // ExtendedNavigator.of(context).pushContactFormPage(editedContact: contact);
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // contactActorBloc.add(ContactActorEvent.deleted(contact));
            },
          ),
        ],
      ),
    );
  }
}
