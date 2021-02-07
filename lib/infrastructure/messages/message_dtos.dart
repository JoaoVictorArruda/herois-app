
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/messages/message.dart';
import 'package:herois/domain/messages/value_objects.dart';

part 'message_dtos.freezed.dart';
part 'message_dtos.g.dart';

@freezed
abstract class MessageDto with _$MessageDto {
  const MessageDto._();

  factory MessageDto({
    @JsonKey(ignore: true) String id,
    @required String text,
    // @required String dateTime,
    @required bool sentByMe,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _MessageDto;

  factory MessageDto.fromDomain(Message message) {
    return MessageDto(
      // dateTime: DateTime.now().toIso8601String(),
      text: message.text.getOrCrash(),
      id: message.id.getOrCrash(),
      sentByMe: message.sentByMe,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  Message toDomain() {
    return Message(
      // dateTime: DateTime.parse(dateTime),
      text: MessageText(text),
      id: UniqueId.fromUniqueString(id),
      sentByMe: sentByMe
    );
  }

  factory MessageDto.fromFirestore(DocumentSnapshot doc) {
    return MessageDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}