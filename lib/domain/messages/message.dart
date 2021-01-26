import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/messages/value_objects.dart';

part 'message.freezed.dart';

@freezed
abstract class Message implements _$Message {
  const Message._();

  const factory Message({
    @required UniqueId id,
    @required MessageText text,
    @required DateTime dateTime,
    @required bool sentByMe,
  }) = _Message;

  factory Message.empty() => Message(
      id: UniqueId(),
      text: MessageText(''),
      dateTime: DateTime.now(),
      sentByMe: true,
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return text.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}
