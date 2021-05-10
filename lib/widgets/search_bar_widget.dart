import 'package:flutter/material.dart';
import 'package:ambar/utils/ColorSets.dart';
import 'package:ambar/widgets/search.dart';

/// {@template search_bar_widget}
/// [Widget]
/// {@endtemplate}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(80.0, 10.0, 80.0, 20.0),
      color: ColorSets.colorPrimaryRed,
      child: Search(),
    );
  }
}