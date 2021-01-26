
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/contact/contact.dart';
import 'package:herois/domain/core/value_objects.dart';

part 'contact_dtos.freezed.dart';

part 'contact_dtos.g.dart';

@freezed
abstract class ContactDto with _$ContactDto {
  const ContactDto._();

  factory ContactDto({
    @JsonKey(ignore: true) String userId,
    @required String lastMessage,
  }) = _ContactDto;

  factory ContactDto.fromDomain(Contact contact) {
    return ContactDto(
      userId: contact.userId.getOrCrash(),
      lastMessage: contact.lastMessage.getOrCrash(),
    );
  }

  Contact toDomain() {
    return Contact(
      userId: StringSingleLine(userId),
      lastMessage: StringSingleLine(lastMessage),
    );
  }

  factory ContactDto.fromFirestore(DocumentSnapshot doc) {
    return ContactDto.fromJson(doc.data()).copyWith(userId: doc.id);
  }

  factory ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);
}
