import 'package:flutter/material.dart';
import 'package:youtube_music/Youtube_Music.dart';

class Youtube_music_hp extends StatefulWidget {
  const Youtube_music_hp({Key? key}) : super(key: key);

  @override
  State<Youtube_music_hp> createState() => _Youtube_music_hpState();
}

class _Youtube_music_hpState extends State<Youtube_music_hp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            title: const Text(
              "YouTube Music",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.white,
          ),
          preferredSize: Size(0, 50)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                shape: Border.all(color: Colors.black, width: 5),
                color: Colors.indigo[300],
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Youtube_Music(),
                        settings: const RouteSettings(
                          arguments: "https://music.youtube.com/",
                        ),
                      ),
                    );
                  });
                },
                child: const Text(
                  "YouTube Music",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.5,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
