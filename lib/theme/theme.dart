import 'package:flutter/material.dart';

class LighTheme {
  ThemeData theme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
    textTheme: ThemeData.light().textTheme.copyWith(
          subtitle1: const TextStyle(
            fontSize: 20,
          ),
        ),
  );
}
