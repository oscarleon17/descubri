import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';



class AuthService {

  final FirebaseAuth auth = FirebaseAuth.instance;

  String getCurrentUser() {
    User user = auth.currentUser;
    return user?.uid;
  }

}

