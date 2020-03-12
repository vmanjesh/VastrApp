import 'dart:convert';

import 'package:http/http.dart' as http;

class ProfileEntity {
  final String id, name, email_id, phone_number, login_method, gender, state, city, dob, image;

  ProfileEntity(
      {
        this.id,
        this.name,
        this.email_id,
        this.phone_number,
        this.login_method,
        this.gender,
        this.state,
        this.city,
        this.dob,
        this.image
      }
      );

  factory ProfileEntity.fromJson(Map<String, dynamic>json) {
    return ProfileEntity(
      id: json['id'],
      name: json['name'],
      email_id: json['email_id'],
      phone_number: json['phone_number'],
      gender: json['gender'],
      state: json['state'],
      city: json['city'],
      dob: json['dob'],
      image: json['image'],
    );
  }

  Map _profileMap() {
    var _map = Map <String, dynamic>();

    _map['id'] = id;
    _map['name'] = name;
    _map['email_id'] = email_id;
    _map['phone_number'] = phone_number;
    _map['gender'] = gender;
    _map['state'] = state;
    _map['city'] = city;
    _map['dob'] = dob;
    _map['image'] = image;

    return _map;
  }
}

Future<ProfileEntity> saveProfile(String url, {Map body}) async{
  return http.post(url, body: body).then((http.Response response) {
    final int statusCode = response.statusCode;

    if(statusCode < 200 || statusCode > 400 || json == null){
      throw new Exception('Error while save Data!');
    }
    return ProfileEntity.fromJson(json.decode(response.body));
  });
}