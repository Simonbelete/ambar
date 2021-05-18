import 'package:flutter/material.dart';

/// {@template default_theme}
/// [ThemeData]
/// {@endtemplate}

class DefaultTheme {
  static ThemeData get light {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        )
      )
    );
  }
}