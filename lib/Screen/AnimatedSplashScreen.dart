import 'dart:async';
import 'package:bible_osterwald/Constant/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            color: Color.fromRGBO(255,215,0, 1),
            width: double.infinity,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  'assets/images/bible_PNG33.png',
                  width: animation.value * 200,
                  height: animation.value * 200,
                ),
                new Text(
                  'La Sainte Bible',
                  style: new TextStyle(
                    color: Colors.purpleAccent,
                    fontFamily: 'Elegant',
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
          )
        ],
      ),
    );
  }
}