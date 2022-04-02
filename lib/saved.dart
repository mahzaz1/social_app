import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {

  List<String> myPostList = [
    "assets/images/imranPost.jpg",
    "assets/images/aryPost.jpg",
    "assets/images/memePost.jpg",
    "assets/images/imranPost.jpg",

  ];

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
        title: Text("Saved",
          style: TextStyle(
              fontSize: 30,
              color: Colors.black
          ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/pic.jpeg"),
            ),
          )

        ],


      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),

            Text("Your Saved\nPosts",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),),

            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                  crossAxisCount: 2,
                children: List.generate(myPostList.length, (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                      child: Image.asset(
                        myPostList[index],
                      )
                  ),
                ))
              ),
            )


          ],
        ),
      ),
    );
  }
}
