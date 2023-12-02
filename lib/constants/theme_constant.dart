import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: Colors.blue,
    secondary: Colors.black,
    tertiary: Colors.white,
    onBackground: Colors.white,
    onPrimary: Colors.white
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade700,
    primary: Colors.cyan,
    secondary: Colors.white,
    tertiary: Colors.white,
    onBackground: Colors.transparent,
    onPrimary: Colors.black45
  )
);