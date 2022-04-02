import 'package:flutter/material.dart';
import 'package:social_app/bottomNavBar.dart';
import 'package:social_app/profile.dart';
import 'package:social_app/routes.dart';
import 'package:social_app/saved.dart';
import 'package:social_app/search.dart';
import 'package:social_app/sign_up.dart';
import 'package:social_app/splash.dart';
import 'package:social_app/welcome.dart';

import 'home.dart';
import 'intro_1.dart';
import 'intro_2.dart';
import 'intro_3.dart';
import 'login.dart';
//
//
//
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Nunito",

      ),
      routes: {

        "/" : (context)=> BottomNavbar(),
        MyRoutes.homeRoutes : (context)=> BottomNavbar(),
        MyRoutes.splashRoutes : (context)=> Splash(),
        MyRoutes.intro1Routes : (context)=> Intro1Page(),
        MyRoutes.intro2Routes : (context)=> Intro2Page(),
        MyRoutes.intro3Routes : (context)=> Intro3Page(),
        MyRoutes.welcomeRoutes : (context)=> WelcomePage(),
        MyRoutes.signupRoutes : (context)=> SignUpPage(),
        MyRoutes.loginRoutes : (context)=> LoginPage(),
      },

    );
  }
}





