import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/infrastructure/info/info_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:flutter/services.dart';
import 'package:herois/domain/contact/contact.dart';
import 'package:herois/domain/contact/contact_failure.dart';
import 'package:herois/infrastructure/contact/contact_dtos.dart';
import 'package:herois/infrastructure/contact/i_contact_repository.dart';
import 'package:herois/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IContactRepository)
class ContactRepository implements IContactRepository {
  final FirebaseFirestore _firestore;

  ContactRepository(this._firestore);

  @override
  Stream<Either<ContactFailure, KtList<Contact>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.messageCollection.where('lastMessage', isNotEqualTo: 'null')
        .snapshots()
        .map(
          (snapshot) => right<ContactFailure, KtList<Contact>>(
        snapshot.docs
            .map((doc) => ContactDto.fromFirestore(doc).toDomain())
            .toImmutableList(),
      ),
    )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ContactFailure.insufficientPermission());
      } else {
        return left(const ContactFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ContactFailure, Unit>> create(Contact contact) async {
    try {
      final userDoc = await _firestore.userDocument();
      final contactDto = ContactDto.fromDomain(contact);

      await userDoc.messageCollection.doc(contactDto.userId).set(contactDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and contacts aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ContactFailure.insufficientPermission());
      } else {
        return left(const ContactFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ContactFailure, Unit>> update(Contact contact) async {
    try {
      final userDoc = await _firestore.userDocument();
      final contactDto = ContactDto.fromDomain(contact);

      await userDoc.messageCollection
          .doc('data')
          .update(contactDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and contacts aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ContactFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ContactFailure.unableToUpdate());
      } else {
        return left(const ContactFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ContactFailure, Unit>> delete(Contact contact) async {
    try {
      final userDoc = await _firestore.userDocument();
      final contactId = contact.userId.getOrCrash();

      await userDoc.contactCollection.doc(contactId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ContactFailure.insufficientPermission());
      } else {
        return left(const ContactFailure.unexpected());
      }
    }
  }
}
