import 'package:flutter/material.dart';
import 'package:ambar/utils/ColorSets.dart';

/// {@template search}
/// [Widget]
/// {@endtemplate}

class Search extends StatelessWidget {
  static const String _hintText = 'Search text...';

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      textAlign: TextAlign.left,
      maxLines: 1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        prefixIcon: Icon(
          Icons.search,
          size: 25.0,
          color: ColorSets.colorGeyser,
        ),
        hintStyle: new TextStyle(color: ColorSets.colorSlateGray),
        hintText: _hintText,
        filled: true,
        fillColor: Colors.white,
        hoverColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(25.0)
        )
      )
    );
  }
}