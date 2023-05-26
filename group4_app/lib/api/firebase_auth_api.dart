import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthAPI {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> getUser() {
    return auth.authStateChanges();
  }

  Future<void> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No user found for that email");
      } else if (e.code == 'wrong-password') {
        print("Wrong password provided for that user");
      }
    }
  }

  Future<void> signUp(String email, String password) async {
    UserCredential credential;

    try {
      credential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print("The password provided is too weak");
      } else if (e.code == 'email-already-in-use') {
        print("Email already exists");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut() async {
    auth.signOut();
  }
}
