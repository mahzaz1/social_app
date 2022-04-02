import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12:00 PM"),
                Row(
                  children: [
                    Icon(Icons.signal_cellular_alt_sharp,
                    size: 15,),
                    Icon(Icons.wifi,
                      size: 15,),
                    Icon(Icons.battery_charging_full_outlined,
                      size: 15,),

                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Text("Welcome to \nSocial App",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 35,
              ),),
            SizedBox(height: 18),
            Text("You can start using the application after signing up in the app. It will take a while.",
              textAlign: TextAlign.center,),
            SizedBox(height: 20),
            Center(
              child: Text("If you already have an account just login.",
                textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),

            Image.asset("assets/images/undraw_music_re_a2jk 1.png"),
            SizedBox(height: 55),
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
                    Navigator.pushNamed(context, MyRoutes.signupRoutes);
                  },
                  child: Text("Sign Up")),
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
                    Navigator.pushNamed(context, MyRoutes.loginRoutes);
                   },
                  child: Text("Log In",
                    style: TextStyle(
                        color: Colors.blue
                    ),)),
            ),
            SizedBox(height: 35),
            Center(
              child: Container(
                height: 4,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
