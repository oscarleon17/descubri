import 'package:flutter/material.dart';
import '../services/AuthService.dart';
import 'package:descubri/screens/DescubriLoginWidget.dart';

class DescubriProfileRoot extends StatelessWidget {
  final String userId = AuthService().getCurrentUser();
  final Color color;
  DescubriProfileRoot(this.color);

  @override
  Widget build(BuildContext context) {
    //AuthService().signInWithUsernameAndPassword('oscar@descubri.io', 'testin');
    //print(AuthService().signInWithUsernameAndPassword('oscar@descubri.io', 'testin'));
    if (userId != null) {
      //if logged in, route to user profile page
      return Container(
        color: color,
      );
    } else {
      //if not logged in, route to sign in/sign up page
      return Container(
        color: Colors.blue,
      );
    }
  }
}
