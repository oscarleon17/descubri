import 'package:descubri/screens/DescubriHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DescubriOnboarding extends StatefulWidget {
  @override
  _DescubriOnboardingState createState() => _DescubriOnboardingState();
}

//TODO: Add app description text for each page along with visuals, change form of home button.
class _DescubriOnboardingState extends State<DescubriOnboarding> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        Scaffold(
            body: Container(
          child: Center(
              child: new Column(
                  children: [Text('First Page'), Text('Subtext')],
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Column contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center //Center Column contents vertically,
                  )),
        )),
        Scaffold(
            body: Container(
          child: Center(
              child: new Column(
                  children: [Text('Second Page')],
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Column contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center //Center Column contents vertically,
                  )),
        )),
        Scaffold(
          body: Container(
            child: Center(
                child: new Column(
                    children: [Text('Third Page')],
                    mainAxisAlignment: MainAxisAlignment
                        .center, //Center Column contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment
                        .center //Center Column contents vertically,
                    )),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DescubriHome()),
              );
            },
            tooltip: "Go Home",
            label: Text("Start Discovering"),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        )
      ],
    );
  }
}
