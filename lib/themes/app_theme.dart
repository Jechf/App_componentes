import 'package:flutter/material.dart';

class AppTheme {
  static const Color primario = Colors.cyan;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primario,
        elevation: 5,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.cyan,
        shape: const StadiumBorder(),
        elevation: 5,
      )),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primario),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primario),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primario),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      appBarTheme: const AppBarTheme(elevation: 0, color: primario),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primario)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primario,
      elevation: 5,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: Colors.cyan,
    )),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primario),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primario),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primario),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
    appBarTheme: const AppBarTheme(elevation: 0, color: primario),
    scaffoldBackgroundColor: Colors.black,
  );
}
