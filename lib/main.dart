import 'dart:math';
import 'package:flutter/material.dart';
import 'package:youtube_music/Log_In.dart';
import 'package:youtube_music/Sign_In.dart';

void main() {
  runApp(MaterialApp(
    home: Login_home_screen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login_home_screen extends StatefulWidget {
  const Login_home_screen({Key? key}) : super(key: key);

  @override
  State<Login_home_screen> createState() => _Login_home_screenState();
}

class _Login_home_screenState extends State<Login_home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(500),
                  ),
                  color: Colors.lime.shade600),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(600),
                  ),
                  color: Colors.lime.shade900),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(500),
              ),
              gradient: LinearGradient(
                transform: GradientRotation(pi / 4),
                colors: [
                  Colors.lime.shade600,
                  Colors.lime.shade900,
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(500),
                ),
                color: Colors.lime.shade600),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 125),
            child: Text(
              "Login",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 165, top: 325),
            child: Text(
              "Account",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 360),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 2)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 2)),
                label: Text(
                  "Email",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                suffixIcon: Icon(Icons.email_outlined, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 430),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 2)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 2)),
                label: Text(
                  "Password",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, top: 530),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Welcome_screen();
                  },
                ));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.lime.shade900,
                  Colors.lime.shade600,
                  Colors.lime.shade900,
                ])),
                alignment: Alignment.center,
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account ? ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Login_sign_in();
                        },
                      ));
                    },
                    child: Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 18, color: Colors.lime.shade900),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
