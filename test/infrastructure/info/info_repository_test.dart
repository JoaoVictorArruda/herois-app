import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';

import '../../domain/info/info_test.dart';
import '../auth/firebase_auth_facade_test.dart';
import 'info_dtos_test.dart';

class InfoRepositoryTest {

  void create(InfoTest infoTest) async {
    final firestore = MockFirestoreInstance();
    final user = await FirebaseAuthFacadeTest().getSignedInUser();
    firestore.collection('users').doc(user.uid).set(InfoDtoTest.fromDomain(infoTest).toJson());
  }

  void update(InfoTest infoTest) async {
    final firestore = MockFirestoreInstance();
    final user = await FirebaseAuthFacadeTest().getSignedInUser();
    firestore.collection('users').doc(user.uid).update(InfoDtoTest.fromDomain(infoTest).toJson());
  }


  void delete(InfoTest infoTest) async {
    final firestore = MockFirestoreInstance();
    final user = await FirebaseAuthFacadeTest().getSignedInUser();
    firestore.collection('users').doc(user.uid).delete();
  }

}