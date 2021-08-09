import 'package:flutter/material.dart';
import 'package:ambar/presentation/themes/default_theme.dart'; 
import 'package:ambar/presentation/pages/home_page.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: DefaultTheme.light,
      home: HomePage(),
    );
  }
}