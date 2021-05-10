import 'package:flutter/material.dart';
import 'widgets/primary_appbar_widget.dart';
import 'package:ambar/widgets/search_bar_widget.dart';
import 'package:ambar/themes/default_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: DefaultTheme.light,
      home: Scaffold(
        appBar: PrimaryAppBar(),
        body: Column(
          children: <Widget>[
            SearchBar(),
          ]
        )
      )
    );
  }
}