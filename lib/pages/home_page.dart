import 'dart:convert';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vastr_app/components/grid_home.dart';
import 'package:vastr_app/components/horizontal_list.dart';
import 'package:vastr_app/constant/constants.dart';
import 'package:vastr_app/modelEntity/categoryEntity.dart';
import 'package:vastr_app/pages/fragmanets/myAddress.dart';
import 'package:http/http.dart' as http;




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text('VASTR',
          style: TextStyle(
            fontFamily: 'FunCity',
            fontSize: 25,
            color: Colors.white
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
            iconSize: 30,
          ),
          IconButton(
            icon: Icon(
                Icons.favorite_border,
              color: Colors.white,
            ),
            onPressed: () {},
            iconSize: 30,
          ),
          IconButton(
            icon: Icon(
                Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
//              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(MY_CART);
            },
            iconSize: 30,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(

              accountName: Text('Pratham'),
              accountEmail: Text('info@prathavision.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 55,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Search by Catagory'),
                leading: Icon(Icons.home, color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(MY_ADDRESS);
              },
              child: ListTile(
                title: Text('My Addresses'),
                leading: Icon(Icons.business, color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(MY_ORDER);
              },
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(MY_CART);
              },
              child: ListTile(
                title: Text('My Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(MY_PROFILE);
              },
              child: ListTile(
                title: Text('My Profile'),
                leading: Icon(Icons.person, color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(MY_ORDER);
              },
              child: ListTile(
                title: Text('Offer Zone'),
                leading: Icon(Icons.local_offer, color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(CUST_SPRT);
              },
              child: ListTile(
                title: Text('Customer Support'),
                leading: Icon(Icons.call, color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(OFFER_ZONE);
              },
              child: ListTile(
                title: Text('Terms and Conditions'),
                leading: Icon(Icons.info_outline, color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(TERMS_CDN);
              },
              child: ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.power_settings_new, color: Colors.black,),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 5, right: 5),
        children: <Widget>[
          HorizontalList(),
          _banner,
          SizedBox(height: 10),
          t_shirtLabel,
          SizedBox(height: 10),
          Container(
            height: 250.0,
            child: Products(),
          ),
          shirtLabel,
          SizedBox(height: 10),
          Container(
            height: 250.0,
            child: ShirtProduct(),
          ),
          SizedBox(height: 10),
          favorite_pro,
          SizedBox(height: 10),
          vastr_favorite,
          SizedBox(height: 10),
          HorizontalList2(),
          SizedBox(height: 10),
          also_expose,
        ],
      ),
    );
  }

//  <----------==================Here Define others Widgets==============------------>

  Widget _banner = Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        image: DecorationImage(
          image: NetworkImage('http://www.projects.estateahead.com/vastr/assets/images/image1.png'),
          fit: BoxFit.fill,
        )
    ),
    height: 270,
    /*child: Carousel(
          dotBgColor: Colors.transparent,
          dotColor: Colors.indigoAccent,
          boxFit: BoxFit.contain,
          images: [
            AssetImage('assets/as1.png',),
            AssetImage('assets/as2.png'),
            AssetImage('assets/as3.png'),
            AssetImage('assets/as4.png'),
            AssetImage('assets/as5.png'),
            AssetImage('assets/as6.png'),
          ],
          autoplay: false,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
        ),*/

    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){},
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){},
            ),
          ),
        )
      ],
    ),
  );

  Widget t_shirtLabel = Card(
    color: Colors.blueGrey[900],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey[900], width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 35,
      child: Center(
          child: Text('T-SIRTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
      ),
    ),
  );
  Widget shirtLabel = Card(
    color: Colors.blueGrey[900],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey[900], width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 35,
      child: Center(
          child: Text('T-SIRTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
      ),
    ),
  );

  Widget vastr_favorite = Card(
    color: Colors.blueGrey[900],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey[900], width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 35,
      child: Center(
          child: Text('VASTR FAVORITES',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
      ),
    ),
  );

Widget also_expose = Card(
    color: Colors.blueGrey[900],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey[900], width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 35,
      child: Center(
          child: Text('ALSO EXPOSE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
      ),
    ),
  );

  Widget favorite_pro = Container(
    height: 250,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: Colors.indigoAccent),
        image: DecorationImage(
          image: NetworkImage('http://www.projects.estateahead.com/vastr/assets/images/all_banner.png'),
          fit: BoxFit.fill,
        )
    ),
  );
}
