import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:vastr_app/constant/constants.dart';
import 'package:vastr_app/modelEntity/categoryEntity.dart';


/*class HorizontalList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 5, right: 5),
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
          top: Radius.circular(10),
        )
      ),
      child: Container(
        height: 125.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Catagory(
              image_location: cate_img,
              image_caption: 'T-Sirt',
            ),

            Catagory(
              image_location: 'assets/catg/asd2.png',
              image_caption: 'Sirt',
            ),

            Catagory(
              image_location: 'assets/catg/asd3.png',
              image_caption: 'Pant',
            ),

            Catagory(
            image_location: 'assets/catg/asd4.png',
            image_caption: 'Jeans',
          ),
          ],
        ),
      ),
    );
  }
}
class Catagory extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Catagory({
    this.image_location,
    this.image_caption,
  }
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Card(
          child: Container(
            color: Colors.white,
            width: 100.0,
            child: ListTile(
              title: Image.asset(image_location,
                width: 100.0,
                height: 80.0,),
              subtitle: Text(image_caption, textAlign: TextAlign.center,),
            ),
          ),
        ),
      ),
    );
  }
}*/

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

//https://flutter-examples.com/flutter-custom-json-listview-with-images-text/


class _HorizontalListState extends State<HorizontalList> {

  final url = BASE_URL + 'all_category';
  Future<List<CategoryEntity>> fetchCategory(http.Client client) async{
    final response = await client.get(url);
    return compute(parseList, response.body);
  }
  List<CategoryEntity> parseList(String responseBody) {
    final parse = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parse.map<CategoryEntity>((json) => CategoryEntity.formJson(json)).toList();
  }

 /* List<CategoryEntity> listCategory = [];
  var loading = false;

  Future <Null> categoryImage() async {
    setState(() {
      loading = true;
    });
    final url = BASE_URL + 'all_category';
    final response = await http.get(url);

    print(response.body);
    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      setState(() {
        for (Map i in item) {
          listCategory.add(CategoryEntity.formJson(i));
        }
        loading = false;
      });
      *//*List<CategoryEntity> categoryList = item.map<CategoryEntity>((json) {
        return CategoryEntity.formJson(json);*//*
    }
    *//*).toList();
      print(categoryList);
      return categoryList;*//*
  }*/

  /*Future<List<CategoryEntity>> categoryImage() async{
    final url = BASE_URL+'all_category';
    final response = await http.get(url);

    print(response.body);
    if(response.statusCode == 200) {

      final item = json.decode(response.body).cast<Map<String, dynamic>>();
      List<CategoryEntity> categoryList = item.map<CategoryEntity>((json) {
        return CategoryEntity.formJson(json);
      }
      ).toList();
      print(categoryList);
      return categoryList;
    }
    else{
//      throw Exception('We are unavailable to load List.');
      print("Error ALso here");
    }
  }*/

 /* @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categoryImage();
  }*/

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoryEntity>>(
        future: fetchCategory(http.Client()),
        builder: (context, snapshot) {
          if(snapshot.hasError)
            print(snapshot.error);
          return snapshot.hasData
              ? MyList(category: snapshot.data)
              : Center(
            child: CircularProgressIndicator(),
          );
        },
      );
  }

  /*Container(
  child: GestureDetector(
  onTap: () {},
  child: Container(
  height: 80,
  width: 100,
  child: ClipRRect(
  borderRadius: BorderRadius.circular(15.0),
  child: Image.network(category[index].categoryImage),
  ),
  ),
  ),
  );*/
/*Future<List<CategoryEntity>> categoryImage() async{
  final url = BASE_URL+'all_category';
  final response = await http.get(url);

  if(response.statusCode == 200) {
    List category = json.decode(response.body);
    return category.map((category) => CategoryEntity.formJson(category)).toList();
  }
  else{
    throw Exception('We are unavailable to load List.');
  }
}*/
}

class MyList extends StatelessWidget {
  final List<CategoryEntity> category;

  const MyList({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: category.length,
      itemBuilder: (context, index) {
        return Container(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 80,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(category[index].categoryImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class HorizontalList2 extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
          top: Radius.circular(10),
        )
      ),
      child: Container(
        height: 210.0,
        width: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Catagory2(
              image_location: 'assets/catg/asd1.png',
              image_caption: 'T-Sirt',
            ),

            Catagory2(
              image_location: 'assets/catg/asd2.png',
              image_caption: 'Sirt',
            ),

            Catagory2(
              image_location: 'assets/catg/asd3.png',
              image_caption: 'Pant',
            ),

            Catagory2(
            image_location: 'assets/catg/asd4.png',
            image_caption: 'Jeans',
          ),
          ],
        ),
      ),
    );
  }
}



class Catagory2 extends StatelessWidget {
  final String image_location;
  final String image_caption;


  Catagory2({
    this.image_location,
    this.image_caption,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child:Container(
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.blueGrey[900]
          ),
          width: 130.0,
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  height: 160,
                  width: 120.0,
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      image_location,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
//                  color: Colors.black,
                child: Text(
                  image_caption,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

