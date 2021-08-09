import 'package:flutter/material.dart';
import 'package:ambar/utils/ColorSets.dart';
import 'package:ambar/presentation/widgets/search_appbar.dart';
import 'package:ambar/presentation/widgets/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorSets.colorPrimaryRed,
      ),
      body: Container(
        color: ColorSets.colorPrimaryRed,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Search(),
                )
              ],
            ),
          )
        )
      )
    );
  }

  TextField _search() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Search',
      ),
    );
  }  
}