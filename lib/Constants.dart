import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle smallText = GoogleFonts.lato(
  fontSize: 18,
  color: Colors.white,
);

String sun = 'assets/sun.png';
String fog = 'assets/fog.png';
String rainy = 'assets/rainy.png';
String cloudy = 'assets/cloudy.png';
String background = 'https://pngimg.com/uploads/world_map/world_map_PNG28.png';

var location, country, temp, time, tempf, humidity, wind, cacheIcon, src;

TextStyle customGrey = TextStyle(
  color:Colors.grey,
  fontSize: 16,
);