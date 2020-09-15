import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../services/AuthService.dart';

class DescubriProfileRoot extends StatelessWidget {

  final String userId = AuthService().getCurrentUser();
  final Color color;
  DescubriProfileRoot(this.color);

  @override
  Widget build(BuildContext context) {

    if (userId != null) {
      return Container(
        color: color,
      );

    } else {
      return Container(
        color: Colors.black,
      );
    }
  }
}
