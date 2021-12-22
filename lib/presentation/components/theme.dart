import 'package:flutter/material.dart';

/// Created by Naveen Verma on 22-12-2021
/// To The New
/// naveen.verma@tothenew.com

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(color: Colors.blueGrey[900]),
    primaryColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blueGrey[900],
      textTheme: ButtonTextTheme.primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.blueGrey[500],
        padding: const EdgeInsets.all(15.0),
        textStyle: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.25),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.blueGrey[500],
        shape: const StadiumBorder(),
        padding: const EdgeInsets.all(15.0),
        textStyle: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.blueGrey[800],
    appBarTheme: AppBarTheme(color: Colors.blueGrey[900]),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.blueGrey[900],
        padding: const EdgeInsets.all(15.0),
        textStyle: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.25),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.blueGrey[900],
        shape: const StadiumBorder(),
        padding: const EdgeInsets.all(15.0),
        textStyle: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2),
      ),
    ),
  );
}
