import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vastr_app/constant/constants.dart';

class CategoryEntity {
  String categoryId = "";
  String categoryName  = "";
  String categoryImage  = "";
  String cateGoryDescription  = "";
  String subCategoryId  = "";
  String subCategoryImage  = "";
  String subcategoryName  = "";
  String subChildId = "";
  String subChildName = "";
  String subChildImage = "";
  String brandId  = "";
  String brandName  = "";

  CategoryEntity(
      {
        this.categoryId, this.categoryName, this.categoryImage,
        this.cateGoryDescription, this.subCategoryId, this.subCategoryImage,
        this.subcategoryName, this.subChildId, this.subChildName,
        this.subChildImage, this.brandId, this.brandName
      }
    );

  factory CategoryEntity.formJson(Map<String, dynamic>json) {
    return CategoryEntity(
      categoryId: json['cat_id'],
      categoryName: json['cate_name'],
      categoryImage: BASE_IMAGE_URL+json['app_cat_image'],
      cateGoryDescription: json['cateGoryDescription'],

      subCategoryId: json['subCategoryId'],
      subCategoryImage: json['subCategoryImage'],
      subcategoryName: json['subcategoryName'],
      subChildId: json['subChildId'],
      subChildName: json['subChildName'],
      subChildImage: json['subChildImage'],
      brandId: json['brandId'],
      brandName: json['brandName'],
    );
  }
  Map<String, dynamic> toJson() => {
    "cat_id": categoryId,
    "cate_name": categoryName,
    "app_cat_image": categoryImage,
    "cateGoryDescription": cateGoryDescription,
  };
}

/*class CategoryList {
  final List<CategoryEntity> categoryEntity;

  CategoryList({
    this.categoryEntity,
  });

  factory CategoryList.fromJson(List<dynamic> parsedJson){
    List<CategoryEntity> categoryEntity = List<CategoryEntity>();

    categoryEntity = parsedJson.map((i) => CategoryEntity.formJson(i)).toList();

    return CategoryList(
      categoryEntity: categoryEntity
    );
  }
}*/

/*
String cate_img, cate_name, cate_id;
bool isData = false;

final String url = BASE_URL+"all_category";
Future<List<CategoryEntity>> categoryList() async{
  var response = await http.get(url);
  print(response);
  if(response.statusCode == 200) {
    final String responseBody = response.body;
    var responseJson = json.decode(responseBody);
    cate_id = responseJson['cat_id'];
    cate_name = responseJson['cat_name'];
    cate_img = responseJson['http://www.projects.estateahead.com/vastr/assets/images/category_image'];
  }
}*/
