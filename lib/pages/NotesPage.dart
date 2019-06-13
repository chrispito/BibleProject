import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
            color: Colors.white,
            width: double.infinity,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Notes page")
              ]
            ),
          );
  }
  
}