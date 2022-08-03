// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home_screen/collection.dart';
import 'package:spotify_clone/components/home_screen/song.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/components/home_screen/playlist.dart';
import 'package:spotify_clone/pages/navigation.dart';
import 'package:spotify_clone/pages/playlist_screen.dart';

void main() => runApp(Navigation());

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Gotham'),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Spotify'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/home_screen_bg.png'),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),

                  // TOP BAR (START)

                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Good morning",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        icon: Image.asset("assets/icons/bell.png"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          // builder: (context) => LoginPage()),
                          // );
                        },
                        icon: Image.asset("assets/icons/history.png"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => LoginPage()),
                          // );
                        },
                        icon: Image.asset("assets/icons/settings.png"),
                      ),
                    ],
                  ),
                  // TOP BAR (END)

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),

                      // PLAYLIST 1

                      Playlist(
                          app: PlaylistScreen(
                              cover: "assets/playlists/queen_logo.png",
                              label: "aaaa",
                              title: "Queen"),
                          asset: "assets/playlists/queen_logo.jpg",
                          label: "Queen"),

                      SizedBox(width: 10),

                      // PLAYLIST 2

                      Playlist(
                          app: LoginPage(),
                          asset: "assets/songs/paranoid_sabbath.jpg",
                          label: "Paranoid"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),

                      // PLAYLIST 3
                      Playlist(
                          app: LoginPage(),
                          asset: "assets/songs/stairway_led.jpeg",
                          label: "Stairway to He..."),

                      SizedBox(width: 10),

                      // PLAYLIST 4
                      Playlist(
                          app: LoginPage(),
                          asset: "assets/playlists/ordem_para_desc_album.jpeg",
                          label: "Ordem Paranor..."),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),

                  // MADE FOR YOU
                  Row(
                    children: [
                      SizedBox(width: 20),
                      SizedBox(
                          width: 380,
                          child: Text(
                            "Made for you",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 240,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            // COLLECTION 1
                            SizedBox(
                              width: 13,
                            ),
                            Collection(
                                asset: "assets/collections/ed_sheeran.png",
                                app: LoginPage(),
                                info:
                                    "Ed Sheeran, Katy Perry, Pitbull and more"),

                            // COLLECTION 2

                            Collection(
                                asset:
                                    "assets/collections/led_zeppelin_stairway_to_heaven.jpg",
                                app: LoginPage(),
                                info:
                                    "Led Zeppelin, Metallica, Nirvana and more"),

                            // COLLECTION 3

                            Collection(
                                asset:
                                    "assets/collections/beatles_abbey_road.jpg",
                                app: LoginPage(),
                                info: "The Beatles, Black Sabbath and more"),
                          ],
                        ),
                        SizedBox(
                          width: 13,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),
                  // TRENDING NOW
                  Row(
                    children: [
                      SizedBox(width: 20),
                      SizedBox(
                          width: 380,
                          child: Text(
                            "Trending now",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 240,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 13,
                            ),
                            // SONG 1

                            Song(
                                asset: "assets/songs/master_metallica.jpg",
                                app: LoginPage(),
                                song: "Master Of Puppets",
                                info: "Song . Metallica"),
                          ],
                        ),
                        Row(
                          children: [
                            // SONG 2

                            Song(
                                asset: "assets/songs/hounds_kate.jpeg",
                                app: LoginPage(),
                                song: "A Deal With God...",
                                info: "Song . Kate Bush"),
                          ],
                        ),
                        Row(
                          children: [
                            // SONG 3

                            Song(
                                asset: "assets/songs/stairway_led.jpeg",
                                app: LoginPage(),
                                song: "Stairway to Heaven",
                                info: "Song . Led Zeppelin"),
                          ],
                        ),
                        SizedBox(
                          width: 13,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),

                  // ROCK CLASSICS

                  Row(
                    children: [
                      SizedBox(width: 20),
                      SizedBox(
                          width: 380,
                          child: Text(
                            "Rock classics",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 240,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 13,
                            ),
                            // SONG 1

                            Song(
                                asset: "assets/songs/paranoid_sabbath.jpg",
                                app: LoginPage(),
                                song: "War Pigs",
                                info: "Song . Black Sabbath"),
                          ],
                        ),
                        Row(
                          children: [
                            // SONG 2

                            Song(
                                asset: "assets/songs/the_dark_side.jpeg",
                                app: LoginPage(),
                                song: "Money",
                                info: "Song . Pink Floyd"),
                          ],
                        ),
                        Row(
                          children: [
                            // SONG 3

                            Song(
                                asset: "assets/songs/nevermind.jpg",
                                app: LoginPage(),
                                song: "Smells Like Teen...",
                                info: "Song . Nirvana"),
                          ],
                        ),
                        SizedBox(
                          width: 13,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
