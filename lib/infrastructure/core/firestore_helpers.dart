import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kt_dart/collection.dart';
import 'package:herois/domain/auth/i_auth_facade.dart';
import 'package:herois/domain/core/errors.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/requests/request.dart';
import 'package:herois/infrastructure/info/info_dtos.dart';
import 'package:herois/infrastructure/requests/request_dtos.dart';
import 'package:herois/injection.dart';

extension FirestoreX on FirebaseFirestore {

  Future<String> userId() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return user.id.getOrCrash();
  }

  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return collection('users')
        .doc(user.id.getOrCrash());
  }

  Future<DocumentReference> otherUserDocument(String userId) async {
    return collection('users')
        .doc(userId);
  }

  Future<CollectionReference> locationCollection() async {
    return collection('locations');
  }

  Future<CollectionReference> usersCollection() async {
    return collection('users');
  }

  Future<KtList<Request>> getRequestList() async {
    final userDoc = await userDocument();
    final QuerySnapshot requestDoc = await userDoc.requestCollection.get();
    final List<DocumentSnapshot> requestSnap = requestDoc.docs;
    return requestSnap.map((doc) => RequestDto.fromFirestore(doc).toDomain()).toImmutableList();
  }

  Future<Info> getInfo() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final Info info = await collection('users').doc(user.id.getOrCrash()).get()
        .then((value) => InfoDto.fromFirestore(value).toDomain());
    return info;
  }

  Future<Info> getOtherInfo(String userId) async {
    final Info info = await collection('users').doc(userId).get()
        .then((value) => InfoDto.fromFirestore(value).toDomain());
    return info;
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
  CollectionReference get infoCollection => collection('info');
  CollectionReference get requestCollection => collection('requests');
  CollectionReference get requestSearchCollection => collection('request_search');
  CollectionReference get requestSearchFilterCollection => collection('request_search_filter');
  CollectionReference get messageCollection => collection('message');
  CollectionReference get contactCollection => collection('contact');
  CollectionReference get tokenCollection => collection('tokens');
}