import 'package:flutter/material.dart';

import 'package:meteo_app_finall/Appbar.dart';
import 'package:meteo_app_finall/Body.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar,
        body: BodyWidget(),
      ),
    );
  }
}
