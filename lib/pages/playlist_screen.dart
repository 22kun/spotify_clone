import 'package:flutter/material.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/navigation.dart';

class PlaylistScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
                  child: Image.asset(cover, fit: BoxFit.cover),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 380,
                  child: Text(
                    label,
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
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
