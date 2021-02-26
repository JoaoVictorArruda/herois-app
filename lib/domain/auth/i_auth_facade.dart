import 'package:dartz/dartz.dart';
import 'package:herois/domain/auth/auth_failure.dart';
import 'package:herois/domain/auth/user.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
