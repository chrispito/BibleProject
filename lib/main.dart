import 'dart:async';

import 'package:bible_osterwald/Constant/Constant.dart';
import 'package:bible_osterwald/Screen/AnimatedSplashScreen.dart';
import 'package:bible_osterwald/Screen/HomePage.dart';
import 'package:flutter/material.dart';

Future main() async {
  runApp(new MaterialApp(
    title: 'BibleOsterwald',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primarySwatch: Colors.red,
    ),
    home: new AnimatedSplashScreen(),
    routes: <String, WidgetBuilder>{
      HOME_SCREEN: (BuildContext context) => new MainScreen()
    },
  ));
}

