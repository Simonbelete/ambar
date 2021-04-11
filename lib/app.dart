import 'package:flutter/material.dart';
import 'package:ambar/home.dart';

class App extends StatelessWidget {
  static const String _title = 'አምባር መዝገበ-ቃላት';

  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Home(),
    );
  }
}