import 'package:descubri/screens/DescubriHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DescubriOnboarding extends StatefulWidget {
  @override
  _DescubriOnboardingState createState() => _DescubriOnboardingState();
}

class _DescubriOnboardingState extends State<DescubriOnboarding> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        Center(
          child: Text('First Page'),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Scaffold(
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
        )
      ],
    );
  }
}
