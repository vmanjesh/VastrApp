import 'package:flutter/material.dart';
import 'package:vastr_app/components/grid_home.dart';
import 'package:vastr_app/pages/fragmanets/customerSupports.dart';
import 'package:vastr_app/pages/fragmanets/myAddress.dart';
import 'package:vastr_app/pages/fragmanets/myCart.dart';
import 'package:vastr_app/pages/fragmanets/myOrders.dart';
import 'package:vastr_app/pages/fragmanets/myProfile.dart';
import 'package:vastr_app/pages/fragmanets/offerZone.dart';
import 'package:vastr_app/pages/fragmanets/termsNconditions.dart';
import 'package:vastr_app/pages/home_page.dart';
import 'package:vastr_app/pages/login_page.dart';
import 'package:vastr_app/pages/product_details.dart';
import 'package:vastr_app/pages/splash_screen.dart';

import 'components/categoryList.dart';
import 'constant/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

      routes: <String, WidgetBuilder>{
        HOME_PAGE: (BuildContext context) => HomePage(),
        MY_ADDRESS: (BuildContext context) => MyAddress(),
        MY_CART: (BuildContext context) => MyCart(),
        MY_PROFILE: (BuildContext context) => MyProfile(),
        MY_ORDER: (BuildContext context) => MyOrders(),
        CUST_SPRT: (BuildContext context) => CustomerSupport(),
        OFFER_ZONE: (BuildContext context) => OfferZone(),
        TERMS_CDN: (BuildContext context) => TermsCondition(),

      },
    );
  }
}
