import 'package:flutter/material.dart';
import 'package:ambar/presentation/widgets/search_bar_widget.dart';
import 'package:ambar/presentation/widgets/primary_appbar_widget.dart';
import 'package:ambar/presentation/widgets/primary_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(),
      body: Column(
        children: <Widget>[
          SearchBar(),
        ],
      ),
      bottomNavigationBar: PrimaryBottomNaviagationBar(),
    );
  }
}