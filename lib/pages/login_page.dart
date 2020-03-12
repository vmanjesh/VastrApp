import 'package:flutter/material.dart';
/*
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';*/


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /*//google sign in
  GoogleSignIn googleAuth = new GoogleSignIn();

  //Facebook sign in
  FacebookLogin fbLogin = new FacebookLogin();*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

