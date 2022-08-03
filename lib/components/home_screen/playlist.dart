import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/login_page.dart';

class Playlist extends StatelessWidget {
  Widget app;
  String asset;
  String label;
  Playlist({required this.app, required this.asset, required this.label});

  @override
  build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => app),
          );
        }),
        child: SizedBox(
          height: 60,
          width: 185,
          child: Row(
            children: [
              Image.asset(asset),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background/playlist_bg.png'),
                      fit: BoxFit.cover),
                ),
                height: 60,
                width: 125,
                alignment: Alignment(-1, 0),
                child: Row(
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(label,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
