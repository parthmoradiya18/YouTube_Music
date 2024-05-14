import 'dart:math';
import 'package:flutter/material.dart';
import 'package:youtube_music/Youtube_Music.dart';

class Welcome_screen extends StatefulWidget {
  const Welcome_screen({Key? key}) : super(key: key);

  @override
  State<Welcome_screen> createState() => _Welcome_screenState();
}

class _Welcome_screenState extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 250, top: 250),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(500),
                    ),
                    color: Colors.lime.shade600),
              ),
            ),
            SizedBox(height: 60),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
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
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(500),
                    ),
                    color: Colors.lime.shade900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 300),
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
              padding: const EdgeInsets.only(left: 50, top: 425),
              child: Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 70,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 500),
              child: Text(
                "back",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 620),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Youtube_Music(),
                      settings: const RouteSettings(
                        arguments: "https://music.youtube.com/",
                      ),
                    ),
                  );
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
                    "Login as YouTube Music",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, top: 740),
              child: Text(
                "Delete Account",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
