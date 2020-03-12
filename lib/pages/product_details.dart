import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vastr_app/constant/constants.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
/*
  final pro_detail_name;
  final pro_detail_newPrice;
  final pro_detail_oldPrice;
  final pro_detail_image;

  _ProductDetailsState(
      this.pro_detail_name,
      this.pro_detail_newPrice,
      this.pro_detail_oldPrice,
      this.pro_detail_image
      );*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text('VASTR',
          style: TextStyle(
              fontFamily: 'FunCity',
              fontSize: 25,
              color: Colors.black
          ),
        ),
        actions: <Widget>[

          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(MY_CART);
            },
            iconSize: 30,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                    color: Colors.white,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 220,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
//                                color: Colors.blueAccent,
                                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                              ),
                              FloatingActionButton(
                                onPressed: (){},
                                heroTag: 'offer',
                                child: Text('17%'),
                                backgroundColor: Colors.black,
                              ),
                              Positioned(
                                child: FloatingActionButton(
                                  onPressed: (){},
                                  heroTag: 'favorite',
                                  elevation: 2,
                                  child: Icon(Icons.favorite_border, size: 35, color: Colors.black,),
                                  backgroundColor: Colors.transparent,
                                ),
                                bottom: 0,
                                right: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 85,
                              width: 75,
                              color: Colors.blueAccent,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3),
                              height: 85,
                              width: 75,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'T-Shirt',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: <Widget>[
                            Container(
                              color: Colors.lightGreen,
                              width: 57,
                              height: 25,
                              margin: EdgeInsets.only(left: 10, top: 5),
//                              alignment: AlignmentDirectional.centerEnd,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    ' 4.3',
                                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(Icons.star_border, color: Colors.white,)
                                ],
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              height: 25,
                              color: Colors.transparent,
                              alignment: AlignmentDirectional.centerEnd,
                              child: Text(
                                '50 Rating & 15 Reviews',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Extra ₹ 100 off',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                '₹500',
                                style: TextStyle(fontSize: 21, color: Colors.black),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                '₹600',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green, decoration: TextDecoration.lineThrough),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                '17% off',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1,
                            width: 130,
                            color: Colors.black26,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Available Sizes',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: FloatingActionButton(
                                onPressed: (){},
                                heroTag: 'xxl',
                                child: Text(
                                  'XXL',
                                  style: TextStyle(color: Colors.black),
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: FloatingActionButton(
                                onPressed: (){},
                                heroTag: 'xl',
                                child: Text(
                                  'XL',
                                  style: TextStyle(color: Colors.black),
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1,
                            width: 130,
                            color: Colors.black26,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Available Colors',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 50,
                              width: 50,
                              child: Card(
                                color: Colors.blueAccent,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height: 50,
                              width: 50,
                              child: Card(
                                color: Colors.red,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height: 50,
                              width: 50,
                              child: Card(
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1,
                            width: 130,
                            color: Colors.black26,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Details',
                            style: TextStyle(fontSize: 21, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                                "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                                "It has survived not only five centuries, but also the leap into electronic typesetting, "
                                "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
                                "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1,
                            width: 130,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              flex: 12,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: RaisedButton(
                  padding: EdgeInsets.all(0.0),
                  color: Colors.transparent,
//                  textColor: Colors.white,
                  onPressed: (){},
                  child: Ink(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.white30, Colors.black],
                    ),
                  ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 450),
                      alignment: Alignment.center,
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
