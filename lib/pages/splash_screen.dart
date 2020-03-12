import 'package:flutter/material.dart';
import 'dart:async';

import 'package:vastr_app/constant/constants.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  var _visible = true;
  AnimationController controller;
  Animation <double> animation;

  startTime() async{
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage(){
    Navigator.of(context).pushReplacementNamed(HOME_PAGE);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration: Duration(
        milliseconds: 3000
      ),
      vsync: this
    );
    animation = CurvedAnimation(
      parent: controller, curve: Curves.easeIn
    );
    animation.addListener(() => this.setState(() {}));

    controller.forward();

    setState(() {
      _visible = !_visible;
    });

    startTime();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset('assets/splash.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/vastr_logo.png',
                  width: animation.value * 350,
                  height: animation.value * 350,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
