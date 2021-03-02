import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';

class FirebaseAuthFacadeTest {

  Future<String> signInTest() async {
    final user = await getSignedInUser();
    return user.displayName;
  }

  Future<User> getSignedInUser() async {
    final googleSignIn = MockGoogleSignIn();
    final signinAccount = await googleSignIn.signIn();
    final googleAuth = await signinAccount.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final auth = MockFirebaseAuth();
    final result = await auth.signInWithCredential(credential);
    return result.user;
  }

}