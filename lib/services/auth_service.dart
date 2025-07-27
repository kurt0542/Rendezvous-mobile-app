import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Future<void> signup({required String email, required String password}) async {
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
}
