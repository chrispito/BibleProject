import 'package:bible_osterwald/models/pages/page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page extends StatelessWidget {
  final PageViewModel viewModel;

  Page({this.viewModel,});

  @override
  Widget build(BuildContext context) {
    return new Container(
            color: viewModel.bgColor,
            width: double.infinity,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  viewModel.mainImagePath,
                  width: 200.0,
                  height: 200.0,
                ),
                new Text(
                  viewModel.title,
                  style: new TextStyle(
                    color: viewModel.titleColor,
                    fontFamily: viewModel.titleFontFamily,
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                new Text(
                  'Ostervald',
                  style: new TextStyle(
                    color: Color.fromRGBO(255, 36, 0, 1),
                    fontFamily: 'sanford',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: new Text(
                  '( 1877 )',
                    style: new TextStyle(
                      color: Color.fromRGBO(220, 20, 60, 1),
                      fontFamily: 'sanford',
                    ),
                  ),
                )
              ]
            ),
          );
  }
  
}