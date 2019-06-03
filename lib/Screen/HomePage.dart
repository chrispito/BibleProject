import 'package:bible_osterwald/models/pages/page_view_model.dart';
import 'package:bible_osterwald/pages/page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Sainte Bible',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(title: 'La Sainte Bible'),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: new Stack(
        children: <Widget>[
          new Page(
            viewModel: PageViewModel(
              Color.fromRGBO(255,215,0, 1),
              'La Sainte Bible',
              Colors.purpleAccent,
              'Elegant',
              'assets/images/bible_PNG33.png'
            )
          )
         ],
      )
    );
  }
}
