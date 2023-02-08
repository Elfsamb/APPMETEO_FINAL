import 'dart:convert';

// import 'package:dioapi/Content/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:meteo_app_finall/Constants.dart';


class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  Future getResponse() async {
    http.Response response = await http.get('https://api.weatherapi.com/v1/current.json?key=68ea3b75c9c2462787e52106211203&q=$location&aqi=yes');


    Map<String, dynamic> result = jsonDecode(response.body.toString());
    setState(() {
      temp = result['current']['temp_c'].round();
      location = result['location']['name'];
      country = result['location']['country'];
    });
    print(result.toString().toUpperCase());
  }

  @override
  void initState() {
    this.getResponse();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  location + ', ' + country,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  temp.toString(),
                  style: customGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
