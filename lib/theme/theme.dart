import 'package:flutter/material.dart';

class LighTheme {
  final _lightColor = _LightColor();
  late final ThemeData theme;

  LighTheme() {
    theme = ThemeData(
      appBarTheme: const AppBarTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      textTheme: ThemeData.light().textTheme.copyWith(subtitle1: TextStyle(fontSize: 20, color: _lightColor._textColor)),
      colorScheme: const ColorScheme.light(),
      buttonTheme:
          ButtonThemeData(colorScheme: ColorScheme.light(onPrimary: _lightColor.blueMana, onSecondary: _lightColor.blueMana)),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.green),
        side: const BorderSide(color: Colors.green),
      ),
    );
  }
}

class _LightColor {
  final Color _textColor = Colors.black;
  final Color blueMana = const Color.fromARGB(95, 1, 188, 248);
}
