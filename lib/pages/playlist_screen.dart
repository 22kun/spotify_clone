import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/navigation.dart';
import 'dart:math';

class PlaylistScreen extends StatefulWidget {
  String cover;
  String title;
  String label;

  PlaylistScreen({
    required this.cover,
    required this.title,
    required this.label,
    item0,
    item1,
    item2,
    item3,
    item4,
    item5,
    item6,
    item7,
    item8,
    item9,
    item10,
    item11,
  });

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(999);
    int randomNumber2 = random.nextInt(999);
    int randomNumber3 = random.nextInt(23);
    int randomNumber4 = random.nextInt(59);
    bool isred = true;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/home_screen_bg.png'),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 70,
                  child: FlatButton(
                    textColor: Colors.white,
                    child: Text(
                      "<",
                      style: TextStyle(fontSize: 40, fontFamily: "Poppins"),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Image.asset(widget.cover, fit: BoxFit.cover),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 390,
                  child: Text(
                    widget.label,
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Poppins",
                        fontSize: 15),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/icons/spotify_icon2.png")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "$randomNumber,$randomNumber2 likes . $randomNumber3"
                      "h $randomNumber4"
                      "min",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                      height: 70,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isred = !isred;
                          });
                        },
                        icon: Image.asset("assets/icons/heart_outlined.png",
                            color:
                                (isred == false) ? Colors.white : Colors.red))
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
