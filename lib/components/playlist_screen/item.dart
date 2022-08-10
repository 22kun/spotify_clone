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
      child: Column(children: [
        Container(
          height: 70,
          width: 400,
          child: Row(children: [
            Image.asset(capa),
            SizedBox(width: 10),
            Column(
              children: [
                SizedBox(height: 10),
                Flexible(
                    child: Container(
                  width: 220,
                  child: Text(
                    textAlign: TextAlign.left,
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Gotham",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                SizedBox(height: 10),
                Container(
                  width: 220,
                  child: Row(
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
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: 52,
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
