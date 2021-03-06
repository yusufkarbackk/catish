import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kWhite = Color(0xFFf8f5f1);
Color kDarkBrown = Color(0xff533f28);
Color kLightBrown = Color(0xff75645a);
Color kBaige = Color(0xffdbc9b5);
Color kDarkBaige = Color(0xff8c7b73);

TextStyle kSeccondText = GoogleFonts.raleway(
    textStyle: TextStyle(color: Colors.black87, fontSize: 18));

TextStyle kMainText = GoogleFonts.roboto(
    textStyle: TextStyle(color: Colors.black87, fontSize: 18));

Widget? prevPage;

var apiKey = '5db821c4-36d5-475b-9a4e-f48ab21df7b0';

var breeds = 'https://api.thecatapi.com/v1/breeds?limit=4';
