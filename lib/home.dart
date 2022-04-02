import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';

import 'bottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  List<String> myImgaeList = [
    'assets/images/pic.jpeg',
    'assets/images/anas.jpg',
    'assets/images/bakhti.jpg',
    'assets/images/bilal.jpg',
    'assets/images/hammad.jpg',
    'assets/images/uzair.jpg',
    'assets/images/saif.jpg',
    'assets/images/mehtab.jpg',
    'assets/images/waleed.jpg',
    'assets/images/danish.jpg',
    'assets/images/anas.jpg',
    'assets/images/bakhti.jpg',
    'assets/images/bilal.jpg',
    'assets/images/hammad.jpg',
    'assets/images/uzair.jpg',
    'assets/images/saif.jpg',
    'assets/images/mehtab.jpg',
    'assets/images/waleed.jpg',
    'assets/images/danish.jpg',
  ];


  @override
  Widget build(BuildContext context) {
  final _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _globalKey,
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
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

              icon: Icon(Icons.notifications_active_outlined,
                color: Color(0xff0094FF),
                size: 20,),
              onPressed: () {},
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Social",
          style: TextStyle(
              fontSize: 30,
              color: Colors.black
          ),),

        leading: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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

            icon: Icon(Icons.segment_rounded,
              color: Color(0xff0094FF),
              size: 17,),
            onPressed: () {
              _globalKey.currentState?.openDrawer();
            },
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(
                width:MediaQuery.of(context).size.width,
                height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: myImgaeList.length,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:5,),
                        child: Container(
                            width: 50,

                            // child: Image.asset(myImgaeList[index],fit: BoxFit.cover,),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.blue),
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(image: AssetImage(myImgaeList[index],)

                        )
                      ),
                        ),
                      ),
          ),
      ),
                SizedBox(
                  height: 10,
                ),
                Container(

                  padding: EdgeInsets.all(10),
                  width:MediaQuery.of(context).size.width,
                  height: 85,
                  decoration: BoxDecoration(
                  color: Color(0x66dedede),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create a post...",style: TextStyle(fontSize: 20,color: Colors.black54)),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                  color: Colors.black54
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.people_alt_outlined,
                                  color: Colors.black54
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.video_call_outlined,
                                  color: Colors.black54
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.location_on_outlined,
                                  color: Colors.black54
                              ),
                            ],
                          ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(color: Colors.blue, width: 1),
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Text("Share",style: TextStyle(fontSize: 15,color: Colors.black54),),
                                    SizedBox(width: 8,),
                                    Icon(Icons.send,size: 15,color: Colors.blue,)
                                  ],
                                ))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text("Feature Posts",

      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500
      ),),
                SizedBox(height: 5,),

                Container(
                  height: 340,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    color: Colors.grey[100]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Malik Ahzaz",
                            style: TextStyle(
                                fontSize: 18
                            ),),
                            SizedBox(width: 10,),
                            Text("Following",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15
                            ),),
                            Spacer(),

                            Icon(
                              Icons.bookmark,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Text("Just Now",
                          style: TextStyle(
                            color: Colors.grey
                          ),),
                        SizedBox(height: 5,),

                        Image.asset("assets/images/ahzaz.jpg",
                        height: 230,
                        width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                          alignment: Alignment(0,-0.59),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.thumb_up_alt_outlined,size: 16,color: Colors.blue.shade600,),
                            SizedBox(width: 4,),
                            Text("Like",textScaleFactor: 1.1,style: TextStyle(color: Colors.blue.shade600),),
                            Spacer(),



                            Icon(Icons.chat_outlined,size: 16,color: Colors.grey.shade600),
                            SizedBox(width: 4,),
                            Text("Comment",textScaleFactor: 1.1,style: TextStyle(color: Colors.grey.shade600)),
                            Spacer(),


                            Icon(Icons.share,size: 16,color: Colors.grey.shade600),
                            SizedBox(width: 4,),
                            Text("Share",textScaleFactor: 1.1,style: TextStyle(color: Colors.grey.shade600)),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 340,
                  decoration: BoxDecoration(

                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Bilal Khan",
                            style: TextStyle(
                                fontSize: 18
                            ),),
                            SizedBox(width: 10,),
                            Text("+Follow",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15
                            ),),
                            Spacer(),
                            Icon(
                              Icons.bookmark_border,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Text("2 minutes ago",
                          style: TextStyle(
                            color: Colors.grey
                          ),),
                        SizedBox(height: 5,),

                        Image.asset("assets/images/bilal.jpg",
                        height: 230,
                        width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                          alignment: Alignment(0,-0.59),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.thumb_up_alt_outlined,size: 16,color: Colors.blue.shade600,),
                            SizedBox(width: 4,),
                            Text("Like",textScaleFactor: 1.1,style: TextStyle(color: Colors.blue.shade600),),
                            SizedBox(width: 60,),


                            Icon(Icons.chat_outlined,size: 16,color: Colors.grey.shade600),
                            SizedBox(width: 4,),
                            Text("Comment",textScaleFactor: 1.1,style: TextStyle(color: Colors.grey.shade600)),
                            SizedBox(width: 60,),


                            Icon(Icons.share,size: 16,color: Colors.grey.shade600),
                            SizedBox(width: 4,),
                            Text("Share",textScaleFactor: 1.1,style: TextStyle(color: Colors.grey.shade600)),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 340,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Uzair Khan",
                              style: TextStyle(
                                  fontSize: 18
                              ),),
                            SizedBox(width: 10,),
                            Text("+Follow",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15
                              ),),
                           Spacer(),
                            Icon(
                              Icons.bookmark_border,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Text("44 minutes ago",
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                        SizedBox(height: 5,),

                        Image.asset("assets/images/uzair.jpg",
                          height: 230,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                          alignment: Alignment(0,-0.59),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.thumb_up_alt_outlined,size: 16,color: Colors.grey.shade600,),
                            SizedBox(width: 4,),
                            Text("Like",textScaleFactor: 1.1,style: TextStyle(color: Colors.grey.shade600),),
                            SizedBox(width: 60,),


                            Icon(Icons.chat_outlined,size: 16,color: Colors.grey.shade600),
                            SizedBox(width: 4,),
                            Text("Comment",textScaleFactor: 1.1,style: TextStyle(color: Colors.grey.shade600)),
                            SizedBox(width: 60,),


                            Icon(Icons.share,size: 16,color: Colors.grey.shade600),
                            SizedBox(width: 4,),
                            Text("Share",textScaleFactor: 1.1,style: TextStyle(color: Colors.grey.shade600)),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
    ),
        ),),

    );
  }
}



                        // Drawer

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  bool newValue = false;
  
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff2FEBD4),
                  Color(0xff2FEBD4),
                  Color(0xff00D0EC),
                  Color(0xff00D0EC),
                  Color(0xff0094FF),
                  Color(0xff5796F4),
                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic.jpeg"),
                radius: 50,
              ),
              SizedBox(height: 20,),
              Text("Malik Ahzaz",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,

                ),),
              SizedBox(height: 20,),

              ListTile(
                title: Text("Dark Theme",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: Switch(
                  value: newValue,
                  onChanged: (value) {
                    setState(() {
                      newValue = !newValue;
                    });
                  },

                ),
              ),
              ListTile(
                title: Text("Social",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(Icons.arrow_back_ios, color: Colors.white,
                      size: 17,)),
              ),
              ListTile(
                title: Text("Music",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                        Icons.arrow_back_ios, color: Colors.white, size: 17)),
              ),
              ListTile(
                title: Text("Status",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                        Icons.arrow_back_ios, color: Colors.white, size: 17)),
              ),
              ListTile(
                title: Text("Profile",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                        Icons.arrow_back_ios, color: Colors.white, size: 17)),
              ),
              ListTile(
                title: Text("Settings",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                        Icons.arrow_back_ios, color: Colors.white, size: 17)),
              ),
              SizedBox(height: 55,),

              Container(
                width: 130,
                height: 30,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoutes);
                    },
                    child: Text("Log Out",
                        style: TextStyle(
                            color: Colors.black
                        ))

                ),
              )

            ],
          ),
        )
    );
  }
}


