import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';


class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  final TextEditingController userController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

//  <=================================Image Choice Section==================================>



  File _imageFile;
  _openGallery(BuildContext context) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState((){
      _imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState((){
      _imageFile = picture;
    });

    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Make a Choice!'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.image,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(width: 10,),
                    Text('Gallery'),
                  ],
                ),
                onTap: (){
                  _openGallery(context);
                },
              ),
              Padding(
                padding: EdgeInsets.all(8),
              ),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.camera,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(width: 10,),
                    Text('Camera'),
                  ],
                ),
                onTap: (){
                  _openCamera(context);
                },
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _decideImage() {
    if(_imageFile == null){
      return Text('No Image selected!');
    }
    else{
      Image.file(_imageFile, width: 130, height: 130,);
    }
  }

//  <========================Date of Birth Section============================>

  DateTime _currentDate = DateTime.now();
  TextEditingController _date = new TextEditingController();
  Future<Null> _selectdate(BuildContext context) async{
    final DateTime _seldate = await showDatePicker(
        context: context,
        initialDate: _currentDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2021),
        builder: (context,child) {
          return SingleChildScrollView(child: child,);
        }
    );
    String _formattedate = new DateFormat.yMd().format(_currentDate);
    if (_seldate != null && _seldate != _currentDate)
      setState(() {
        _currentDate = _seldate;
        _date.value = TextEditingValue(text: _seldate.toString().replaceAll('$_seldate', '$_formattedate'));
      });
  }
  int _value = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'My Profile',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black26, Colors.black],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: ListView(
              padding: EdgeInsets.only(left: 35, right: 35),
              children: <Widget>[
                SizedBox(height: 15,),
//                profile_image,


//              <---------------------Profile Section------------------->


            Container(
              child: Center(
                child: Stack(
                  children: <Widget>[
                  CircleAvatar(
                  radius: 66,
//                  backgroundColor: Color(0xff476cfb),
                  child: ClipOval(
                    child: SizedBox(
                      height: 130,
                      width: 130,
                      child: (_imageFile!=null)
                          ?Image.file(
                        _imageFile,
                        fit: BoxFit.fill,
                      )
                          /*:Image.network(
                        "https://therminic2018.eu/wp-content/uploads/2018/07/dummy-avatar-300x300.jpg",
                        fit: BoxFit.fill,
                      ),*/
                          :Image.asset("assets/avtar.jpg"),
                    ),
                  ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 7,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey

                        ),
                        child: IconButton(
                          alignment: Alignment.center,
                          color: Colors.black26,
                          icon: Icon(Icons.mode_edit,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {
                            _showChoiceDialog(context);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
//                SizedBox(height: 10,),

//              <-------------------UserDetails--------------------->
//                user_details,
              Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "User Name",
                          fillColor: Colors.white,
                        ),
                        style: TextStyle(height: 1,),
                        keyboardType: TextInputType.text,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          fillColor: Colors.white,
                        ),
                        style: TextStyle(height: 1,),
                        keyboardType: TextInputType.number,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email ID",
                          fillColor: Colors.white,
                        ),
                        style: TextStyle(height: 1,),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
              ),
                GestureDetector(
                  onTap: () => _selectdate(context),
                  child: AbsorbPointer(
                    child: TextFormField(
                      style: TextStyle(height: 1,),
                      controller: _date,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                      ),
                    ),
                  ),
                ),
//                user_detailss,
                Container(

                  child: Center(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Select State",
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(height: 1,),
                          keyboardType: TextInputType.text,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Select City",
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(height: 1,),
                          keyboardType: TextInputType.text,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Gender',
                        style: TextStyle(fontSize: 17,),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() => _value = 0),
                      child: Container(
                        height: 35,
                        width: 70,
//                        color: _value == 1 ? Colors.grey : Colors.transparent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: _value == 1 ? Colors.transparent : Colors.grey[350],
                            border: Border.all(color: Colors.black)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 10),
                            ),
                            Icon(
                                FontAwesomeIcons.male
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () => setState(() => _value = 1),
                      child: Container(
                        height: 35,
                        width: 70,
//                        color: _value == 1 ? Colors.grey : Colors.transparent,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: _value == 1 ? Colors.grey[350] : Colors.transparent,
                          border: Border.all(color: Colors.black)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 10),
                            ),
                            Icon(
                                FontAwesomeIcons.female
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 45,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.black,
                    textColor: Colors.white,
                    splashColor: Colors.lightGreen,
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//      <=============Circle Image ==============>

/*Widget profile_image = Container(
  child: Center(
    child: Stack(
      children: <Widget>[
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            color: Colors.black26,
          ),

        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: IconButton(
            color: Colors.black26,
            icon: Icon(Icons.linked_camera,
              color: Colors.brown,
              size: 30,
            ),
            onPressed: () {

            },
          ),
        )
      ],
    ),
  ),
);*/

//    <============================== User Detail Section==========================>

/*Widget user_details = Container(
  child: Center(
    child: Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            labelText: "User Name",
            fillColor: Colors.white,
          ),
          style: TextStyle(height: 1,),
          keyboardType: TextInputType.text,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Phone Number",
            fillColor: Colors.white,
          ),
          style: TextStyle(height: 1,),
          keyboardType: TextInputType.number,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email ID",
            fillColor: Colors.white,
          ),
          style: TextStyle(height: 1,),
          keyboardType: TextInputType.emailAddress,
        ),

      ],
    ),
  ),
);*/
//Widget user_detailss = Container(
//
//  child: Center(
//    child: Column(
//      children: <Widget>[
//        TextFormField(
//          decoration: InputDecoration(
//            labelText: "Select State",
//            fillColor: Colors.white,
//          ),
//          style: TextStyle(height: 1,),
//          keyboardType: TextInputType.text,
//        ),
//        TextFormField(
//          decoration: InputDecoration(
//            labelText: "Select City",
//            fillColor: Colors.white,
//          ),
//          style: TextStyle(height: 1,),
//          keyboardType: TextInputType.text,
//        ),
//      ],
//    ),
//  ),
//);
