import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    primaryColor: const Color.fromRGBO(59, 76, 154, 1),
    // primarySwatch: Colors.blue,
    backgroundColor: Colors.black,
    brightness: Brightness.dark,
  );
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color.fromRGBO(59, 76, 154, 1),
    // primarySwatch: Colors.blue,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );
}