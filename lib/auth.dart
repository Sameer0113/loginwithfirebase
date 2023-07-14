import 'package:firebase_auth/firebase_auth.dart';

class Authentaction {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> loginUsingCridentials(String email, String password) async {
    UserCredential userCredential = await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);
    print("User Created Successfully");
  }
}
