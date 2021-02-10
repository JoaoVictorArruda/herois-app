import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    String photoUrl = contact.photoUrl;
    if(photoUrl == "") {
      photoUrl = "/assets/images/no_profile_pic.png";
    }
    // final timestamp = DateTime.parse(contact.timestamp);
    // final now = DateTime.now();
    // final difference = now.difference(timestamp);
    String textTime = "";
    // if(difference.inMinutes <= 1) {
    //   textTime = "Agora";
    // } else if(difference.inDays <= 1) {
    //   textTime = timestamp.hour.toString().padLeft(2, '0') + ':' + timestamp.minute.toString().padLeft(2, '0');
    // } else if(difference.inDays > 1) {
    //   final weekDays = ["Seg", "Ter", "Qua", "Qui", "Sex", "Sáb", "Dom"];
    //   textTime = weekDays[timestamp.weekday];
    // } else if(difference.inDays >= 7){
    //   textTime = timestamp.day.toString().padLeft(2, '0') + '/' + timestamp.month.toString().padLeft(2, '0');
    // }
    // final contactActorBloc = context.bloc<ContactActorBloc>();
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).pushMessageOverviewPage(contact: contact);
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Material(
                  child: CachedNetworkImage(
                    placeholder: (context, url) => Container(
                      child: Image.asset(
                        "assets/images/no_profile_pic.png",
                      ),
                    ),
                    imageUrl: contact.photoUrl,
                    width: 60.0,
                    height: 60.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                  clipBehavior: Clip.hardEdge,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(contact.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                            Text(
                                contact.lastMessage.getOrCrash().length > 20
                                    ? contact.lastMessage.getOrCrash().substring(0, 20) + '...'
                                    : contact.lastMessage.getOrCrash(),
                                overflow: TextOverflow.ellipsis
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(textTime)
                )
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
