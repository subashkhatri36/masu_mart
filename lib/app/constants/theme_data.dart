import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:masu_mart/app/constants/constants.dart';

class Themes {
  static Color backgroudColor = HexColor('#800000');
  static Color primaryColor = HexColor('#800000');
  static Color ratingColor = HexColor('#ffc41f');
  static Color buttonColor = HexColor('#ffc837');
  static Color progressbarColor = HexColor('#f95554');
  static Color fontColor = HexColor('#6d6d85');
  static Color accentColor = Colors.black87;

  static final light = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: accentColor,
    backgroundColor: backgroudColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: buttonColor, // background
        onPrimary: Colors.white, // foreground/text
        onSurface: Colors.grey[300], // disabled
        textStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: fontnormal,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.purple, // foreground/text
        backgroundColor: Colors.amber, // background
        textStyle: TextStyle(
          fontSize: fontnormal,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.white, // foreground
        onSurface: Colors.grey, // disabled
        backgroundColor: Colors.teal, // background
      ),
    ),
  );
}
