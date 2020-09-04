import 'package:descubri/screens/DescubriHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class DescubriOnboarding extends StatefulWidget{
  @override
  _DescubriOnboardingState createState() => _DescubriOnboardingState();
}

class _DescubriOnboardingState extends State<DescubriOnboarding> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Press the button below to go home'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DescubriHome()),
          );
        },
        tooltip: "Go Home",
        child: Icon(Icons.home),
      ),
    );
  }
}