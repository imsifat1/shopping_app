import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xff0181cc),
    backgroundColor: Colors.white,
    hintColor: Color(0xFFEEEEEE),
    accentColor: Color(0xff039be6),
  );


  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    backgroundColor: Colors.black54,
    hintColor: Color(0xFFEEEEEE),
    accentColor: Color(0xffFFA74D),
  );
}