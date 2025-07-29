import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {

  Future<void> signUp({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      String warningMessage = '';
      if (e.code == 'weak-password') {
        warningMessage = 'The password entered is too weak.';
      } else if (e.code == 'email-already-in-use') {
        warningMessage = 'An account is already associated with that email.';
      }
      Fluttertoast.showToast(msg: warningMessage);
    }
  }

  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      String warningMessage = '';
      if (e.code == 'user-not-found') {
        warningMessage = 'No user has been found for that email.';
      } else if (e.code == 'wrong-password') {
        warningMessage = 'Your username or password is incorrect.';
      }
      Fluttertoast.showToast(msg: warningMessage);
    }
  }
}
