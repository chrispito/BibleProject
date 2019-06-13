import 'package:bible_osterwald/Screen/Spinner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
import 'package:xml/xml.dart' as xml;

class SearchPage extends StatefulWidget {
    @override
    State createState() => new SearchPageState();
}


class SearchPageState extends State<SearchPage> {

  var _bible;

  @override
  void initState() {

    rootBundle.loadString('assets/xml/bible.xml').then((value) {
      setState(() {
        _bible = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_bible != null) {
      var bible = xml.parse(_bible);
      var title = bible.findAllElements('title');
      return new Container(
            color: Colors.white,
            width: double.infinity,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(title.single.text)
              ]
            ),
          );
    }
    return new Container(
            color: Colors.white,
            width: double.infinity,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Spinner(
                  icon: FontAwesomeIcons.spinner,
                )
              ]
            ),
          );
    
  }
  
}