import 'package:flutter/material.dart';


class MyAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Address'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Text(
            'My address',
            style: TextStyle(
              fontSize: 35, color: Colors.deepOrange
            ),
          ),
        ),
      ),
    );
  }
}
