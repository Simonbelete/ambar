import 'package:flutter/material.dart';
import 'package:ambar/data/models/dictionary_model.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon _appBarIcon = Icon(Icons.search);
  Widget _appBarTitle = Text('Ambar Dictionary');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: HomePageBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xFFC74B59),
        title: _appBarTitle,
        leading: IconButton(onPressed: _searchPressed, icon: _appBarIcon));
  }

  void _searchPressed() {
    setState(() {
      if (_appBarIcon.icon == Icons.search) {
        _appBarIcon = Icon(Icons.close);
        _appBarTitle = new TextField(
          autofocus: true,
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              prefixStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Search...',
              hintStyle: TextStyle(
                color: Colors.white,
              )),
        );
      } else {
        _appBarIcon = Icon(Icons.search);
        _appBarTitle = Text('Ambar Dictionary');
      }
    });
  }
}

/// {@template home_page_body}
/// [HomePageBody]
/// {@endtemplate}
class HomePageBody extends StatefulWidget {
  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<Dictionary> _dicts = [
    Dictionary(id: 1, key: 'abcddddd', description: 'aa'),
    Dictionary(id: 1, key: 'b', description: 'bb')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: _dicts.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          // height: 10,
          child: Text(_dicts[index].key),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
