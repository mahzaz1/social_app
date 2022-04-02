import 'package:flutter/material.dart';
import 'package:social_app/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

            Text("Hello There!",
              style: TextStyle(
                  fontSize: 30
              ),),
            SizedBox(height: 20),
            Text("We are so happy you came back. "),
            SizedBox(height: 50),

            Text("Login to your account to meet  new people & enjoy music. ",
            textAlign: TextAlign.center,),
            SizedBox(height: 30),
            InputForm(),
            SizedBox(height: 30),

            Align(
              alignment: Alignment.centerRight,
              child: Text("Forgot Password?",
                style: TextStyle(
                    color: Colors.red,
                  fontSize: 12
                ),),
            ),
            SizedBox(height: 25),
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
                  child: Text("Log In")),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Donot have an account? "),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoutes.signupRoutes);
                  },
                    child: Text("Sign Up",
                    style: TextStyle(
                      color: Colors.blue
                    ),
                    )
                ),
              ],
            ),
            SizedBox(height: 130),

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

      ],
    );
  }
}
