import 'package:flutter/material.dart';
import 'package:ambar/utils/ColorSets.dart';
import 'package:ambar/presentation/widgets/search.dart';

/// {@template search_bar_widget}
/// [Widget]
/// {@endtemplate}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      color: ColorSets.colorPrimaryRed,
      child: Search(),
    );
  }
}