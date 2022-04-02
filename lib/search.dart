import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
        title: Text("Search",
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

            Text("Search for new \nPeople",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                suffixIcon: Icon(Icons.search_rounded,color: Colors.grey.shade400,),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300))
              ),
            ),
            SizedBox(height: 20,),

            Text("Recent Searches",
              style: TextStyle(
                  fontSize: 15,
                color: Colors.grey
              ),),
            SizedBox(height: 20,),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/bilal.jpg"),
              ),
              title: Text("Bilal Khan"),
              trailing: Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 10,),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/uzair.jpg"),
              ),
              title: Text("Uzair Khan"),
              trailing: Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 10,),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/danish.jpg"),
              ),
              title: Text("Danish Ali"),
              trailing: Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 10,),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/anas.jpg"),
              ),
              title: Text("Anas Ali"),
              trailing: Icon(Icons.cancel_outlined),
            ),


          ],
        ),
      ),
    );
  }
}
