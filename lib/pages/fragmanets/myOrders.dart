import 'package:flutter/material.dart';


class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Text(
            'My Orders',
            style: TextStyle(
                fontSize: 35, color: Colors.deepOrange
            ),
          ),
        ),
      ),
    );
  }
}
