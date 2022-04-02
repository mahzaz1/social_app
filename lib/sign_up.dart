import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

            Text("Create Account",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30
            ),),
            SizedBox(height: 10),
            Text("Hi there, You can start using this \napp after sign up..",
              textAlign: TextAlign.left,),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Icon(Icons.facebook,
                  color: Colors.blue,),
                ),
                SizedBox(width: 20),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Image.asset("assets/images/logos_google-gmail.png"),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(child: Text("or, sign up with your email.")),
            SizedBox(height: 20),
            InputForm(),

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
                    Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  },
                  child: Text("Sign Up")),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Donot have an account? "),
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, MyRoutes.loginRoutes);
                    },
                    child: Text("Log In",
                      style: TextStyle(
                          color: Colors.blue
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 65),
            Center(
              child: Container(
                height: 4,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(40)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        TextFormField(
          style: TextStyle(
              color: Colors.red
          ),
          decoration: InputDecoration(
            hintText: "Enter Username",
            hintStyle: TextStyle(color: Colors.black45,fontSize: 14),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.person,color: Colors.black12,),

          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Email",
            hintStyle: TextStyle(color: Colors.black45,fontSize: 14),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.email,color: Colors.black12,),

          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Set Password",
            hintStyle: TextStyle(color: Colors.black45,fontSize: 14),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.lock_outline_rounded,color: Colors.black12,),

          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Verify Password",
            hintStyle: TextStyle(color: Colors.black45,fontSize: 14),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black12,),

          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
