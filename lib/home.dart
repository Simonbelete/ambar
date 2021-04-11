import 'package:flutter/material.dart';
import 'package:ambar/home_container.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  static const String _title = 'አምባር መዝገበ-ቃላት';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC74B59),
        elevation: 0,
        title: Text(_title),
        centerTitle: true,
      ),
      body: HomeContainer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: 'ቤት',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
            label: 'ፍለጋ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_border,
              size: 30,
            ),
            label: 'የሚወደድ'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history_outlined,
                size: 30,
              ),
              label: 'ታሪክ'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFC74B59)
      )
    );
  }
}