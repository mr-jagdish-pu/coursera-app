import 'package:auth_fb_bloc/features/auth/models/user_model.dart';
import 'package:auth_fb_bloc/utils/datatype_adapter.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireBaseAuthenticationRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;










  Future<FutureResponse> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      final user = userCredential.user;

      if (user != null) {
        final userData = UserModel(
          id: user.uid,
          email: user.email!,
          name: user.displayName ?? 'John Doe',
        );
        //or you can another [useful] data's.
        return SuccessFutureResponse<UserModel>(userData);
      }
      throw Exception("Firebase sign in proceeded but user returned NULL");
    } on FirebaseAuthException catch (e) {
    print("FIREBASE EXP:${e.message}");
      return ErrorFutureResponse("Firebase EXP:${e.message}");
    } catch (e) {
      return ErrorFutureResponse("Something went wrong OR ${e.toString()}");
    }
  }

  Future<FutureResponse> registerWithEmailAndPassword(
      String email, String password) async {

    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      final user = userCredential.user;
      if (user != null) {
        final userData = UserModel(
          id: user.uid,
          email: user.email!,
          name: user.displayName ?? 'John Doe',
        );
        //or you can another [useful] data's.
        return SuccessFutureResponse<UserModel>(userData);
      }
      throw Exception("Firebase sign in proceeded but user returned NULL");

    } on FirebaseAuthException catch (e) {
      return ErrorFutureResponse("Firebase EXP:${e.message}");

    } catch (e) {
      return ErrorFutureResponse("Something went wrong OR ${e.toString()}");
    }

  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
