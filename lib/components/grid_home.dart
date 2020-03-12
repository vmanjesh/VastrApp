import 'package:flutter/material.dart';
import 'package:vastr_app/pages/product_details.dart';

import 'categoryList.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list = [
    {
      "name": "FULL SLEEVES",
      "images":"assets/catg/asd1.png",
    },
    {
      "name": "HALF SLEEVES",
      "images":"assets/catg/asd2.png",
    },
    {
      "name": "BASIC",
      "images":"assets/catg/asd1.png",
    },
    {
      "name": "DOODLES",
      "images":"assets/catg/asd3.png",
    },
    {
      "name": "POLO",
      "images":"assets/catg/asd1.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5
        ),
        itemBuilder: (BuildContext context, int index){
        return Single_Pro(
          pro_image: product_list[index]['images'],
          pro_name: product_list[index]['name'],
        );
        }
    );
  }
}

class Single_Pro extends StatelessWidget {

  final pro_name;
  final pro_image;

  const Single_Pro(
      {
        this.pro_name,
        this.pro_image
      }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: Colors.blueGrey[900]),
      ),
//      color: Colors.indigoAccent,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 2),
            height: 93,
            width: 100,
            color: Colors.white,
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryList())),
              child: Image.asset(
                pro_image, fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Text(
                pro_name,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ShirtProduct extends StatefulWidget {
  @override
  _ShirtProductState createState() => _ShirtProductState();
}

class _ShirtProductState extends State<ShirtProduct> {
  var product_list = [
    {
      "name": "FULL SLEEVES",
      "images":"assets/catg/asd1.png"
    },
    {
      "name": "HALF SLEEVES",
      "images":"assets/catg/asd2.png"
    },
    {
      "name": "BASIC",
      "images":"assets/catg/asd3.png"
    },
    {
      "name": "DOODLES",
      "images":"assets/catg/asd4.png"
    },
    {
      "name": "POLO",
      "images":"assets/catg/asd2.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        primary: false,
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
          crossAxisSpacing: 5
        ),
        itemBuilder: (BuildContext context, int index){
          return Single_Pro(
            pro_image: product_list[index]['images'],
            pro_name: product_list[index]['name'],
          );
        }
    );
  }
}

class Single_Pro1 extends StatelessWidget {

  final pro_name;
  final pro_image;

  const Single_Pro1(
      {
        this.pro_name,
        this.pro_image
      }
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(color: Colors.blueGrey[900]),
      ),
//      color: Colors.indigoAccent,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 2),
            height: 93,
            width: 100,
            color: Colors.white,
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryList())),
              child: Image.asset(
                pro_image, fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Text(
              pro_name,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}


