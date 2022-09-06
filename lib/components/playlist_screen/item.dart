import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/playlist_screen.dart';

class Item extends StatelessWidget {
  String capa;
  String name;
  String artist;
  Widget app;

  Item(
      {required this.capa,
      required this.name,
      required this.artist,
      required this.app});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => app),
        )
      },
      child: Column(children: [
        SizedBox(
          height: 70,
          width: 400,
          child: GestureDetector(
            onLongPress: () => {},
            child: Row(children: [
              const SizedBox(width: 10),
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
                            overflow: TextOverflow.ellipsis,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 78,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: 120,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/properties.png"))
            ]),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
