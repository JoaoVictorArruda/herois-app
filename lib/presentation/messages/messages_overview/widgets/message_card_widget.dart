import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
        child: buildItem(message),
      ),
    );
  }

  Widget buildItem(Message message) {
    // final timestamp = DateTime.parse(message.dateTime.toIso8601String());
    // final now = DateTime.now();
    // final difference = now.difference(timestamp);
    // String textTime = "";
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
    if (message.sentByMe) {
      // Right (my message)
      return Row(
        children: <Widget>[
          Container(
            child: Text(
              message.text.getOrCrash(),
              style: TextStyle(color: Colors.black),
            ),
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            width: 200.0,
            decoration: BoxDecoration(
                color: Color(0xffE8E8E8),
                borderRadius: BorderRadius.circular(8.0)),
            margin: EdgeInsets.only(
                bottom: 10.0,
                right: 10.0),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      );
    } else {
      // Left (peer message)
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Material(
                  child: CachedNetworkImage(
                    placeholder: (context, url) => Container(
                      child: CircularProgressIndicator(
                        strokeWidth: 1.0,
                        valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                      width: 35.0,
                      height: 35.0,
                      padding: EdgeInsets.all(10.0),
                    ),
                    imageUrl: "https://i.imgur.com/YTAKJHx.jpeg",
                    width: 35.0,
                    height: 35.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(18.0),
                  ),
                  clipBehavior: Clip.hardEdge,
                ),
                Container(
                  child: Text(
                    message.text.getOrCrash(),
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(left: 10.0),
                ),
              ],
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        margin: EdgeInsets.only(bottom: 10.0),
      );
    }
  }
}