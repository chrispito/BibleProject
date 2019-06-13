import 'package:bible_osterwald/pages/NotesPage.dart';
import 'package:bible_osterwald/pages/ProfilePage.dart';
import 'package:bible_osterwald/pages/SearchPage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainScreen> {

  int _selectedPage = 1;
  final _pageOptions = [
    new NotesPage(),
    new SearchPage(),
    new ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Notes')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_headline),
            title: Text('Read')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Profile')
          ),
        ],
      ),
    );
  }
}
