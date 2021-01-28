import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:herois/domain/core/errors.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:flutter/services.dart';
import 'package:herois/domain/messages/i_message_repository.dart';
import 'package:herois/domain/messages/message.dart';
import 'package:herois/domain/messages/message_failure.dart';
import 'package:herois/infrastructure/messages/message_dtos.dart';
import 'package:herois/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';
import 'package:herois/domain/auth/i_auth_facade.dart';
import 'package:herois/notifications.dart';

@LazySingleton(as: IMessageRepository)
class MessageRepository implements IMessageRepository {
  final FirebaseFirestore _firestore;

  MessageRepository(this._firestore);

  @override
  Stream<Either<MessageFailure, KtList<Message>>> watchAll(String userId) async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.messageCollection
        .doc('data')
        .collection(userId)
        .orderBy('timestamp', descending: false)
        .snapshots()
        .map(
          (snapshot) => right<MessageFailure, KtList<Message>>(
        snapshot.docs
            .map((doc) => MessageDto.fromFirestore(doc).toDomain())
            .toImmutableList(),
      ),
    )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const MessageFailure.insufficientPermission());
      } else {
        return left(const MessageFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<MessageFailure, Unit>> create(Message message, String userId, Info info) async {
    try {
      final userDoc = await _firestore.userDocument();
      final otherUserDoc = await _firestore.otherUserDocument(userId);
      final messageDto = MessageDto.fromDomain(message);

      Map<String, dynamic> json = messageDto.toJson();
      json['timestamp'] = FieldValue.serverTimestamp();
      await userDoc.messageCollection.doc('data').collection(userId).doc(messageDto.id).set(json);
      json['sentByMe'] = false;
      await otherUserDoc.messageCollection.doc('data').collection(userDoc.id).doc(messageDto.id).set(json);

      await userDoc.messageCollection.doc(userId).set({'lastMessage': messageDto.text, 'photoUrl': info.photoUrl, 'name': info.name.getOrCrash(), 'timestamp': FieldValue.serverTimestamp()});
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final infoLogged = await getIt<FirebaseFirestore>().getOtherInfo(user.id.getOrCrash());
      await otherUserDoc.messageCollection.doc(userDoc.id).set({'lastMessage': messageDto.text, 'photoUrl': infoLogged.photoUrl, 'name': infoLogged.name.getOrCrash(), 'timestamp': FieldValue.serverTimestamp()});
      getIt<Notifications>().sendNotification(info.id.getOrCrash(), infoLogged.name.getOrCrash(), messageDto.text);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const MessageFailure.insufficientPermission());
      } else {
        return left(const MessageFailure.unexpected());
      }
    }
  }
}
