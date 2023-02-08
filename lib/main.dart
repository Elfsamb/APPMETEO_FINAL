import 'package:flutter/material.dart';
import 'package:meteo_app_finall/DiaoPackage.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Weather App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}