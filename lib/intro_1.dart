import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';
import 'package:lottie/lottie.dart';

class Intro1Page extends StatefulWidget {
  const Intro1Page({Key? key}) : super(key: key);

  @override
  State<Intro1Page> createState() => _Intro1PageState();
}

class _Intro1PageState extends State<Intro1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
          child: Column(
            children: [
              Text("Wait a moment!",
              style: TextStyle(
                fontSize: 20,
              ),),
              SizedBox(height: 30),
              Lottie.asset('assets/animations/38435-register.json'),
              SizedBox(height: 20),
              Text("Connect with other people arround the world usimg our social media app",
              textAlign: TextAlign.center,),
              SizedBox(height: 50),
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
                      Navigator.pushNamed(context, MyRoutes.intro2Routes);
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
                    Navigator.pushNamed(context, MyRoutes.intro2Routes);
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
