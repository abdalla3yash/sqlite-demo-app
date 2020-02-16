import 'package:flutter/material.dart';
import 'package:sqlite/pages/home_page.dart';
import 'package:sqlite/pages/login/login_page.dart';

void main() => runApp(MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new HomePage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sqlite',
      theme: ThemeData(primaryColor: Colors.lime),
      routes: routes,
    );
  }
}
