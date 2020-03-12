import 'package:flutter/material.dart';
import 'package:vastr_app/constant/constants.dart';
import 'package:vastr_app/pages/product_details.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  var product_list = [
    {
      "name": "FULL SLEEVES",
      "images":"assets/catg/asd1.png",
    },
    {
      "name": "HALF SLEEVES",
      "images":"assets/catg/asd4.png",
    },
    {
      "name": "BASIC",
      "images":"assets/catg/asd2.png",
    },
    {
      "name": "DOODLES",
      "images":"assets/catg/asd3.png",
    },
    {
      "name": "POLO",
      "images":"assets/catg/asd4.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
            iconSize: 30,
          ),
        ],
      ),
      body: Container(
        child: GridView.builder(
            itemCount: product_list.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,

//              mainAxisSpacing: 2
            ),
            itemBuilder: (BuildContext context, int index){
              return Single_Pro(
                pro_image: product_list[index]['images'],
                pro_name: product_list[index]['name'],
              );
            }
        ),
      ),
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
      height: 175,
      width: 177,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 162,
            width: 175,
            child: Card(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails())),
                child: Image.asset(
                  pro_image, fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              pro_name,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

