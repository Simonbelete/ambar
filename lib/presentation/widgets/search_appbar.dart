import 'package:flutter/material.dart';
import 'package:ambar/utils/ColorSets.dart';

class SearchAppBar extends AppBar {
  SearchAppBar():super(
    actions: <Widget>[
      IconButton(
        onPressed: () {
          print('pressed');
        },
        icon: Icon(Icons.search)
      )
    ],
    centerTitle: true,
    title: Text('አምባር መዝገበ-ቃላት'),
    backgroundColor: ColorSets.colorPrimaryRed,
  );
}