import 'package:flutter/material.dart';
import 'landing.dart';
import 'profile.dart';
import 'settings.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/profile': (BuildContext context) => new MyProfilePage(),
          '/settings': (BuildContext context) => new MySettingsPage(),
          '/login': (BuildContext context) => new MyLoginPage(),
          '/landing': (BuildContext context) => new MyLandingPage(),
        },
        home: MyLoginPage());
  }
}
