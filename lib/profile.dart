
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/routes.dart';

import 'home.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  File? image;

  List<File?> myList = [];

  Future pickImage () async{
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final tempImage = File(image.path);

      setState(() {
        this.image = tempImage;
        myList.add(this.image);
      });
    }
    on PlatformException catch (error){
      print ("Failed To GEt Image: $error");
    }
  }
  Future pickImageC () async{
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if(image == null) return;

      final tempImage = File(image.path);

      setState(() {
        this.image = tempImage;
        myList.add(this.image);
      });
    }
    on PlatformException catch (error){
      print ("Failed To GEt Image: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,


        leading: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(0, 0),
                  color: Colors.black.withOpacity(0.1),
                )
              ]
          ),
          child: IconButton(

            icon: Icon(Icons.arrow_back_ios,
              color: Color(0xff0094FF),
              size: 17,),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoutes);
            },
          ),
        ),
        title: Text("My Profile",
          style: TextStyle(
              fontSize: 25,
              color: Colors.black
          ),),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 19),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                    color: Colors.black.withOpacity(0.1),
                  )
                ]
            ),
            child: IconButton(

              icon: Icon(Icons.settings_sharp,
                color: Color(0xff0094FF),
                size: 20,),
              onPressed: () {},
            ),
          ),
        ],


      ),

      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Stack(
              children: [

                Container(
                  height: 200,
                  width: 200,
                  child:image!=null?  ClipRRect(

                    borderRadius: BorderRadius.circular(100),
                    child: Image.file(
                    image!,fit: BoxFit.cover,
                    ),
                  ):ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("assets/images/pic.jpeg"),

                    ),
                  )
                ),

                Positioned(
                  bottom: 10,
                  right: 12,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      onPressed: () {
                        pickImage();

                        },
                      color: Colors.white,
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ],
            )
          ),
          SizedBox(height: 40,),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("A H Z A Z",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),

            trailing: Icon(Icons.edit,color: Colors.blue,),
          ),
          SizedBox(height: 20,),

          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("StoneHearted",
            style: TextStyle(
            fontSize: 20,
            color: Colors.black
    ),),

            trailing: Icon(Icons.edit,color: Colors.blue,),
          ),
          SizedBox(height: 20,),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text("+92 3409086301",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),

            trailing: Icon(Icons.edit,color: Colors.blue,),
          ),



        ],
      ),

    );
  }
}
