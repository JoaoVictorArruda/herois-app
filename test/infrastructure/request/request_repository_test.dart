import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import '../../domain/request/request_test.dart';
import '../auth/firebase_auth_facade_test.dart';
import 'request_dtos_test.dart';

class RequestRepositoryTest {

  void create(RequestTest requestTest) async {
    final user = await FirebaseAuthFacadeTest().getSignedInUser();
    final firestore = MockFirestoreInstance();
    firestore.collection('users').doc(user.uid).collection('requests').doc(requestTest.id).set(RequestDtoTest.fromDomain(requestTest).toJson());
  }

  void update(RequestTest requestTest) async {
    final user = await FirebaseAuthFacadeTest().getSignedInUser();
    final firestore = MockFirestoreInstance();
    firestore.collection('users').doc(user.uid).collection('requests').doc(requestTest.id).update(RequestDtoTest.fromDomain(requestTest).toJson());
  }

  void delete(RequestTest requestTest) async {
    final user = await FirebaseAuthFacadeTest().getSignedInUser();
    final firestore = MockFirestoreInstance();
    firestore.collection('users').doc(user.uid).collection('requests').doc(requestTest.id).delete();
  }

}