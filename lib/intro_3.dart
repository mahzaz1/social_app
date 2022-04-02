import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';

class Intro3Page extends StatefulWidget {
  const Intro3Page({Key? key}) : super(key: key);

  @override
  State<Intro3Page> createState() => _Intro3PageState();
}

class _Intro3PageState extends State<Intro3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
          child: Column(
            children: [
              Text("Lets Go!",
                style: TextStyle(
                  fontSize: 20,
                ),),
              SizedBox(height: 40),
              Image.asset("assets/images/Sign up-bro 1.png"),
              SizedBox(height: 60),
              Text("You can create and edit your Profile by signing up on social app.",
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
                      Navigator.pushNamed(context, MyRoutes.welcomeRoutes);
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
                      Navigator.pushNamed(context, MyRoutes.welcomeRoutes);
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
