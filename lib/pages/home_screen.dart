// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home_screen/collection.dart';
import 'package:spotify_clone/components/home_screen/song.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/components/home_screen/playlist.dart';
import 'package:spotify_clone/pages/navigation.dart';
import 'package:spotify_clone/pages/playlist_screen.dart';

void main() => runApp(Navigation());

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Gotham-Bold'),
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
                              item0: Item(
                                capa: "assets/playlists/this_is_queen.jpg",
                                name: "Somebody to Love",
                                artist: "Queen",
                              ),
                              item1: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Don't Stop Me Now"),
                              item2: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Killer Queen"),
                              item3: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "I Want To Break Free"),
                              item4: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Bohemian Rhapsody"),
                              item5: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Love of My Life"),
                              item6: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Another One Bites The Dust"),
                              item7: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Radio Gaga"),
                              item8: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Under Pressure"),
                              item9: Item(
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Sheer Heart-Attack"),
                              cover: "assets/playlists/this_is_queen.jpg",
                              label:
                                  "This is Queen. The essencial tracks, all in one playlist.",
                              title: "Queen"),
                          asset: "assets/playlists/this_is_queen.jpg",
                          label: "Queen"),

                      SizedBox(width: 10),

                      // PLAYLIST 2

                      Playlist(
                          app: PlaylistScreen(
                            cover: "assets/songs/paranoid_sabbath.jpg",
                            title: "Paranoid",
                            label:
                                "This is Black Sabbath. The essential tracks, all in one playlist.",
                            item0: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "War Pigs",
                                artist: "Black Sabbath"),
                            item1: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "Paranoid",
                                artist: "Black Sabbath"),
                            item2: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "Planet Caravan",
                                artist: "Black Sabbath"),
                            item3: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "Iron Man",
                                artist: "Black Sabbath"),
                            item4: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "Electric Funeral",
                                artist: "Black Sabbath"),
                            item5: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "Hand of Doom",
                                artist: "Black Sabbath"),
                            item6: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "Rat Salad",
                                artist: "Black Sabbath"),
                            item7: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "Fairies Wear Boots",
                                artist: "Black Sabbath"),
                            item8: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "War Pigs",
                                artist: "Black Sabbath"),
                            item9: Item(
                                capa: "assets/songs/paranoid_sabbath.jpg",
                                name: "Paranoid",
                                artist: "Black Sabbath"),
                          ),
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
                          app: PlaylistScreen(
                            label:
                                "This is Led Zeppelin. The essential tracks, all in one playlist.",
                            cover: "assets/songs/stairway_led.jpeg",
                            title: "Led Zeppelin IV (Deluxe Edition)",
                            item0: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "Black Dog",
                            ),
                            item1: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "Rock and Roll",
                            ),
                            item2: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "The Battle of Evermore",
                            ),
                            item3: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "Stairway to Heaven",
                            ),
                            item4: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "Misty Mountain",
                            ),
                            item5: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "Four Sticks",
                            ),
                            item6: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "Going to California",
                            ),
                            item7: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "When the Levee Breaks",
                            ),
                            item8: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name:
                                  "Black Dog - Basic Track with Guitar Overdubs",
                            ),
                            item9: Item(
                              artist: "Led Zeppelin",
                              capa: "assets/songs/stairway_led.jpeg",
                              name: "Four Sticks - Alternate Mix",
                            ),
                          ),
                          asset: "assets/songs/stairway_led.jpeg",
                          label: "Led Zeppelin IV (Deluxe Edition)"),

                      SizedBox(width: 10),

                      // PLAYLIST 4
                      Playlist(
                        app: PlaylistScreen(
                          cover: "assets/playlists/ordem_para_desc_album.jpeg",
                          title:
                              "Ordem Paranormal: Desconjuração (Trilha Sonora)",
                          label: "",
                          item0: Item(
                            name: "Abertura (Desconjuração)",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item1: Item(
                            name: "Sangue",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item2: Item(
                            name: "Novo Lar",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item3: Item(
                            name: "Fantasmas",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item4: Item(
                            name: "Corre",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item5: Item(
                            name: "Outro Lado",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item6: Item(
                            name: "Veríssimo",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item7: Item(
                            name: "Sorriso",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item8: Item(
                            name: "Kian",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                          item9: Item(
                            name: "Máscaras",
                            capa: "assets/playlists/ordem_para_desc_album.jpeg",
                            artist: 'Julio Victor',
                          ),
                        ),
                        asset: "assets/playlists/ordem_para_desc_album.jpeg",
                        label:
                            "Ordem Paranormal: Desconjuração (Trilha Sonora)",
                      ),
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
