import 'package:dartz/dartz.dart';
import 'package:herois/domain/info/info.dart';
import 'package:kt_dart/collection.dart';
import 'package:herois/domain/messages/message.dart';
import 'package:herois/domain/messages/message_failure.dart';

abstract class IMessageRepository {
  Stream<Either<MessageFailure, KtList<Message>>> watchAll(String userId);

  Future<Either<MessageFailure, Unit>> create(Message message, String userId, Info otherUserInfo);

  // Future<Either<MessageFailure, Unit>> update(Message message, String userId);

  // Future<Either<MessageFailure, Unit>> delete(Message message, String userId);
}
