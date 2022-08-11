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
  Item item0;
  Item item1;
  Item item2;
  Item item3;
  Item item4;
  Item item5;
  Item item6;
  Item item7;
  Item item8;
  Item item9;

  PlaylistScreen({
    required this.cover,
    required this.title,
    required this.label,
    required this.item0,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
    required this.item5,
    required this.item6,
    required this.item7,
    required this.item8,
    required this.item9,
  });

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(999);
    int randomNumber2 = random.nextInt(999);
    int randomNumber3 = random.nextInt(23);
    int randomNumber4 = random.nextInt(59);
    Color red = Colors.red;

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
                // Album Cover

                SizedBox(
                  width: 300,
                  child: Image.asset(widget.cover, fit: BoxFit.cover),
                ),
                SizedBox(height: 20),

                // Title
                Row(
                  children: [
                    SizedBox(
                      width: 70
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          widget.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 2),
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
                      style: TextStyle(
                          color: Colors.grey, fontFamily: "Gotham-Bold"),
                    ),
                  ],
                ),
                SizedBox(
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            red == Colors.white;
                          });
                        },
                        icon: Image.asset("assets/icons/heart_outlined.png",
                            color: red)),
                    SizedBox(
                      width: 270,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/play_button.png"),
                      iconSize: 60,
                    )
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 420,
                  child: Column(children: [
                    widget.item0,
                    widget.item1,
                    widget.item2,
                    widget.item3,
                    widget.item4,
                    widget.item5,
                    widget.item6,
                    widget.item7,
                    widget.item8,
                    widget.item9,
                  ]),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
