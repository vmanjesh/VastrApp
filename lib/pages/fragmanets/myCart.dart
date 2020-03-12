import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Text(
            'My Cart',
            style: TextStyle(
                fontSize: 35, color: Colors.deepOrange
            ),
          ),
        ),
      ),
    );
  }
}
