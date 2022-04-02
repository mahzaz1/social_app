import 'package:flutter/material.dart';

import 'intro_1.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    _navigateToIntro1();
  }

  _navigateToIntro1() async{
    await Future.delayed(Duration(seconds:2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Intro1Page()));

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xff2FEBD4),
            Color(0xff00D0EC),
            Color(0xff0094FF),
            Color(0xff5796F4),
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Refer a Friend.png"),
              SizedBox(height: 10,),
              Text("Social App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),)
            ],
          ),
        ),

      ),
    );
  }
}
