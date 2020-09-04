import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/DescubriHome.dart';
import 'screens/DescubriOnboarding.dart';

int initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = await prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  runApp(DescubriApp());
}

class DescubriApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Descubri',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: initScreen == 0 || initScreen == null ? "first" : "/",
      routes: {
        '/': (context) => DescubriHome(
          title: "Descubri Home"
        ),
        "first": (context) => DescubriOnboarding(),
      },
    );
  }
}