import 'package:flutter/material.dart';
import 'package:ambar/utils/ColorSets.dart';

final double _iconSize = 25;

class PrimaryBottomNaviagationBar extends BottomNavigationBar {
  PrimaryBottomNaviagationBar(): super(
    type: BottomNavigationBarType.fixed,
    elevation: 10.0,
    items: <BottomNavigationBarItem>[
      _home(),
      _search(),
      _star(),
      _history(),
      _setting(),
    ],
    currentIndex: 0,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedItemColor: ColorSets.colorPrimaryRed,
    unselectedItemColor: ColorSets.colorSlateGray
  );
}

BottomNavigationBarItem _home() {
  return BottomNavigationBarItem(
    icon: Icon(
      Icons.home_outlined,
      size: _iconSize,
      ),
    label: 'Home',
  );
}

BottomNavigationBarItem _search() {
  return BottomNavigationBarItem(
    icon: Icon(
      Icons.search_outlined,
      size: _iconSize,
      ),
    label: 'Search',
  );
}

BottomNavigationBarItem _star() {
  return BottomNavigationBarItem(
    icon: Icon(
      Icons.star_border,
      size: _iconSize,
    ),
    label: 'favorite',
  );
}

BottomNavigationBarItem _history() {
  return BottomNavigationBarItem(
    icon: Icon(
      Icons.history_outlined,
      size: _iconSize,
    ),
    label: 'History',
  );
}

BottomNavigationBarItem _setting() {
  return BottomNavigationBarItem(
    icon: Icon(
      Icons.settings_outlined,
      size: _iconSize,
    ),
    label: 'Setting'
  );
}