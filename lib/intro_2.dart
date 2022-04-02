import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';

class Intro2Page extends StatelessWidget {
  const Intro2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
          child: Column(
            children: [
              Text("Almost there!",
                style: TextStyle(
                  fontSize: 20,
                ),),
              SizedBox(height: 40),
              Image.asset("assets/images/Listening happy music-bro 1.png"),
              SizedBox(height: 60),
              Text("Enjoy the latest music using music feature of our social app.",
              textAlign: TextAlign.center,),
              SizedBox(height: 80),
              Container(

                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Color(0xff2FEBD4),
                          Color(0xff00D0EC),
                          Color(0xff0094FF),
                          Color(0xff5796F4),
                        ]
                    )
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.intro3Routes);
                    },
                    child: Text("Next")),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        side: BorderSide(width:2, color:Colors.blue),
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.intro3Routes);
                    },
                    child: Text("Skip",
                      style: TextStyle(
                          color: Colors.blue
                      ),)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
