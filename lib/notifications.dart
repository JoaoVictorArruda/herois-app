import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:herois/domain/core/errors.dart';
import 'package:herois/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import 'domain/auth/i_auth_facade.dart';

var postUrl = "fcm.googleapis.com/fcm/send";

@injectable
class Notifications {
  final FirebaseFirestore _firestore;

  Notifications(this._firestore);

  Future<void> sendNotification(String receiver, String title, String body) async {
    var token = await getTokenWithUserId(receiver);
    final key = "AAAAtzU9koU:APA91bFL2s6r-Av77aSS0pHBm2uaHeN-tNmzwOvIxodDPntZynMtnIddes2X8g-IzSBsJPAJLJn_-ae7pFAkzJ73Bj13Qt8prOEsq_ez5UleJmwYJjpu3LEwUO7xEW4J51vfy-Xk2SKY";
    // BaseOptions options = new BaseOptions(
    //   connectTimeout: 5000,
    //   receiveTimeout: 3000,
    //   headers: headers,
    // );
    // var postUrl = "https://fcm.googleapis.com/fcm/send";
    try {
      // final response = await Dio(options).post(postUrl, data: data);
      final response = await http.post(
          'https://fcm.googleapis.com/fcm/send',
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Authorization': 'key=$key',
          },
          body: jsonEncode(
            <String, dynamic>{
              'notification': <String, dynamic>{
                'body': body,
                'title': title
              },
              'priority': 'high',
              'data': <String, dynamic>{
                'click_action': 'FLUTTER_NOTIFICATION_CLICK',
                'id': '1',
                'status': 'done'
              },
              'to': token,
            },
          ),
      );
      if (response.statusCode == 200) {
        print("ok");
      } else {
        print('notification sending failed');
        // on failure do sth
      }
    } catch (e) {
      print('exception $e');
    }
  }

  Future<String> getTokenWithUserId(String userId) async {
    final FirebaseFirestore _db = FirebaseFirestore.instance;

    var token;
    await _db
        .collection('users')
        .doc(userId)
        .collection('tokens')
        .orderBy('createdAt', descending: true)
        .limit(1)
        .get()
        .then((snapshot) {
      snapshot.docs.forEach((doc) {
        token = doc.id;
      });
    });

    return token;
  }

  void saveToken() async {
    FirebaseMessaging firebaseMessaging = FirebaseMessaging();
    final token = await firebaseMessaging.getToken();
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    var tokens = _firestore
        .collection('users')
        .doc(user.id.getOrCrash())
        .collection('tokens')
        .doc(token);

    await tokens.set({
      'token': token,
      'createdAt': FieldValue.serverTimestamp(), // optional
      'platform': Platform.operatingSystem // optional
    });
  }
}
