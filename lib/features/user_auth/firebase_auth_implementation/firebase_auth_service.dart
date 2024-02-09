import 'package:firebase_auth/firebase_auth.dart';
import 'package:practice_flutter_apps/global/common/toast.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        showToast(message: "The email address is already in use.");
      } else {
        showToast(message: "An error occurred: ${e.code}");
      }
      return null;
    }
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        showToast(message: "No user found for that email.");
      } else if (e.code == "wrong-password") {
        showToast(message: "Wrong password provided for that user.");
      } else {
        showToast(message: "An error occurred: ${e.code}");
      }
      return null;
    }
  }
}
