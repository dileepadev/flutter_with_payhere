import 'package:flutter/material.dart';

class AppThemeData {
  final String appName = "Flutter with PayHere";
  final String packageName = "dev.dileepabandara.flutter_with_payhere";
  final String appVersion = "1.0.0+1";
  final Color appColor = const Color.fromRGBO(36, 71, 215, 1.0);

  final TextStyle headline6Style = const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(33, 33, 33, 1.0));

  final TextStyle headline7Style = const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(33, 33, 33, 1.0));

  final TextStyle subtitle1Style = const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(33, 33, 33, 1.0));

  final AppBarTheme paymentMethodsAppBarStyle = const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      foregroundColor: Color.fromRGBO(33, 33, 33, 1.0));

  // Light Theme Only
  static final ThemeData lightThemeOnly = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(),
    primaryColor: const Color.fromRGBO(36, 71, 215, 1.0),
    backgroundColor: const Color.fromRGBO(60, 96, 246, 1.0),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Open Sans',
    appBarTheme: const AppBarTheme(
        color: Color.fromRGBO(36, 71, 215, 1.0), elevation: 0.0),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(36, 71, 215, 1.0)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
  );
}
