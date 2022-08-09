import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/playlist_screen.dart';

class Item extends StatelessWidget {
  String capa;
  String name;
  String artist;

  Item({required this.capa, required this.name, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 70,
          width: 400,
          child: Row(children: [
            Image.asset(capa),
            SizedBox(width: 10),
            Column(
              children: [
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Gotham",
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/icons/lyrics.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      artist,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Gotham",
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 85,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 94,
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/properties.png"))
          ]),
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
