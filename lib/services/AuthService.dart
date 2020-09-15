import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';



class AuthService {

  final FirebaseAuth auth = FirebaseAuth.instance;

  String getCurrentUser() {
    User user = auth.currentUser;
    return user?.uid;
  }

  Future<String> signInWithUsernameAndPassword(email, password) async{
    try {
      Future<UserCredential> userCredential = auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e){
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
    return 'Success';
  }

  void signOut() async {
    await auth.signOut();
  }

}

