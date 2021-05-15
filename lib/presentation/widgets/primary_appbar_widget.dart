import 'package:flutter/material.dart';
import 'package:ambar/utils/ColorSets.dart';

/// {@template search_appbar}
/// [Widgets]
/// {@endtemplate}

class PrimaryAppBar extends AppBar {
  static const String _title = 'አምባር መዝገበ-ቃላት';

  PrimaryAppBar():super(
    title: Text(_title),
    backgroundColor: ColorSets.colorPrimaryRed,
    centerTitle: true,
    elevation: 0,
  );
}