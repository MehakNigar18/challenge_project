import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
    background: Colors.white,
    surface: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onBackground: Colors.black,
    onSurface: Colors.black,
  ),
  textTheme: TextTheme(
    headline1: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'Rubik',
      fontStyle: FontStyle.normal,
      color: Color.fromRGBO(91, 94, 166, 1),
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'Rubik',
      fontStyle: FontStyle.normal,
      color: Color.fromRGBO(91, 94, 166, 1),
    ),
    bodyText2: TextStyle(
      color: Colors.grey,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  ),
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
    background: Colors.black,
    surface: Colors.black,
    onPrimary: Colors.black,
    onSecondary: Colors.white,
    onBackground: Colors.white,
    onSurface: Colors.white,
  ),
  textTheme: TextTheme(
    headline1: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'Rubik',
      fontStyle: FontStyle.normal,
      color: Color.fromRGBO(91, 94, 166, 1),
    ),
    headline2: const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyText1: const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      color: Colors.grey[300],
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  ),
);
