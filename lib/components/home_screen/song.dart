import 'package:flutter/material.dart';

class Song extends StatelessWidget {
  Widget app;
  String asset;
  String song;
  String info;

  Song(
      {required this.asset,
      required this.app,
      required this.song,
      required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
            child: Image.asset(
              asset,
              width: 172,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => app),
              );
            }),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                SizedBox(
                  width: 190,
                  child: Text(
                    song,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: Text(
                    info,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
