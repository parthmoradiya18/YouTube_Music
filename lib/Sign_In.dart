import 'dart:math';
import 'package:flutter/material.dart';
import 'package:youtube_music/Log_In.dart';
import 'package:youtube_music/Youtube_Music_HP.dart';

class Login_sign_in extends StatefulWidget {
  const Login_sign_in({Key? key}) : super(key: key);

  @override
  State<Login_sign_in> createState() => _Login_sign_inState();
}

class _Login_sign_inState extends State<Login_sign_in> {
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
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(600),
                  ),
                  color: Colors.lime.shade600),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 150,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(400),
                  ),
                  color: Colors.lime.shade900),
            ),
          ),
          Container(
            height: 250,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(500),
              ),
              gradient: LinearGradient(
                transform: GradientRotation(pi / 4),
                colors: [
                  Colors.lime.shade900,
                  Colors.lime.shade600,
                  Colors.lime.shade900,
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(500),
                ),
                color: Colors.lime.shade900),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 125, top: 125),
            child: Container(
              height: 125,
              width: 125,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              alignment: Alignment.center,
              child: Text(
                "YouTube Music",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 125),
            child: Text(
              "Create",
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
            padding: const EdgeInsets.only(left: 40, right: 40, top: 430),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 2)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 2)),
                label: Text(
                  "Mobile ",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                suffixIcon: Icon(Icons.call, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 480),
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
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 530),
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
            padding: const EdgeInsets.only(left: 55, top: 650),
            child: InkWell(
              onTap: () {
                // Navigator.pushNamed(context, "welcome");
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
                  "Sign in",
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
                    "Don't have account? ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Youtube_music_hp();
                        },
                      ));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 18, color: Colors.black),
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
