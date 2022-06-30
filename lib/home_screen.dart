// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/login_page.dart';
import 'package:spotify_clone/navigation.dart';

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
                    height: 50,
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

                      Container(
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          }),
                          child: SizedBox(
                            height: 60,
                            width: 185,
                            child: Row(
                              children: [
                                Image.asset("assets/playlists/queen_logo.jpg"),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/background/playlist_bg.png'),
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
                                            Text("Queen",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12)),
                                            SizedBox(
                                              width: 50,
                                            ),
                                            Text(
                                              textAlign: TextAlign.right,
                                              "...",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            )
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
                      ),

                      SizedBox(width: 10),

                      // PLAYLIST 2

                      Container(
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          }),
                          child: Container(
                            height: 60,
                            width: 185,
                            child: Row(
                              children: [
                                Image.asset(
                                    "assets/songs/paranoid_sabbath.jpg"),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/background/playlist_bg.png'),
                                        fit: BoxFit.cover),
                                  ),
                                  height: 60,
                                  width: 125,
                                  alignment: Alignment(-1, 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Paranoid",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12)),
                                            SizedBox(
                                              width: 20,
                                            ),
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
                      ),
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

                      Container(
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          }),
                          child: SizedBox(
                            height: 60,
                            width: 185,
                            child: Row(
                              children: [
                                Image.asset("assets/songs/stairway_led.jpeg"),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/background/playlist_bg.png'),
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
                                            Text("Led Zeppelin",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12)),
                                            SizedBox(
                                              width: 50,
                                            ),
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
                      ),

                      SizedBox(width: 10),

                      // PLAYLIST 4

                      Container(
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          }),
                          child: Container(
                            height: 60,
                            width: 185,
                            child: Row(
                              children: [
                                Image.asset(
                                    "assets/playlists/ordem_para_desc_album.jpeg"),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/background/playlist_bg.png'),
                                        fit: BoxFit.cover),
                                  ),
                                  height: 60,
                                  width: 125,
                                  alignment: Alignment(-1, 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Ordem Paranor...",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12)),
                                            SizedBox(
                                              width: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
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
                            Column(
                              children: [
                                // COLLECTION 1

                                FlatButton(
                                    child: Image.asset(
                                      "assets/collections/ed_sheeran.png",
                                    ),
                                    onPressed: () {}),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 190,
                                      child: Text(
                                        "Ed Sheeran, Katy Perry, Pitbull and more",
                                        style: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 15,
                                            fontFamily: 'Poppins'),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),

                            // COLLECTION 2
                            Column(
                              children: [
                                FlatButton(
                                    child: Image.asset(
                                      "assets/collections/led_zeppelin_stairway_to_heaven.jpg",
                                      height: 172,
                                    ),
                                    onPressed: () {}),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 190,
                                      child: Text(
                                        "Led Zeppelin, Metallica, Nirvana and more",
                                        style: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 15,
                                            fontFamily: 'Poppins'),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),

                            // COLLECTION 3

                            Column(
                              children: [
                                FlatButton(
                                    child: Image.asset(
                                      "assets/collections/beatles_abbey_road.jpg",
                                      height: 172,
                                    ),
                                    onPressed: () {}),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 190,
                                      child: Text(
                                        "The Beatles, Led Zeppelin, Black Sabbath and more",
                                        style: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 15,
                                            fontFamily: 'Poppins'),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
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
                            // SONG 1

                            Column(
                              children: [
                                FlatButton(
                                    child: Image.asset(
                                      "assets/songs/master_metallica.jpg",
                                      width: 172,
                                    ),
                                    onPressed: () {}),
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
                                            "Master of Puppets",
                                            style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 190,
                                          child: Text(
                                            "Song . Metallica",
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // SONG 2

                            Column(
                              children: [
                                FlatButton(
                                    child: Image.asset(
                                      "assets/songs/hounds_kate.jpeg",
                                      width: 172,
                                    ),
                                    onPressed: () {}),
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
                                            "A Deal With God...",
                                            style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 190,
                                          child: Text(
                                            "Song . Kate Bush",
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // SONG 3

                            Column(
                              children: [
                                FlatButton(
                                    child: Image.asset(
                                      "assets/songs/stairway_led.jpeg",
                                      width: 172,
                                    ),
                                    onPressed: () {}),
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
                                            "Stairway to Heaven",
                                            style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 190,
                                          child: Text(
                                            "Song . Led Zeppelin",
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
                            ),
                          ],
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
                            // SONG 1

                            Column(
                              children: [
                                FlatButton(
                                    child: Image.asset(
                                      "assets/songs/paranoid_sabbath.jpg",
                                      width: 172,
                                    ),
                                    onPressed: () {}),
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
                                            "War Pigs",
                                            style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 190,
                                          child: Text(
                                            "Song . Black Sabbath",
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // SONG 2

                            Column(
                              children: [
                                FlatButton(
                                    child: Image.asset(
                                      "assets/songs/the_dark_side.jpeg",
                                      width: 172,
                                    ),
                                    onPressed: () {}),
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
                                            "Money",
                                            style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 190,
                                          child: Text(
                                            "Song . Pink Floyd",
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // SONG 3

                            Column(
                              children: [
                                FlatButton(
                                    child: Image.asset(
                                      "assets/songs/nevermind.jpg",
                                      width: 172,
                                    ),
                                    onPressed: () {}),
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
                                            "Smell Like Teen S...",
                                            style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 190,
                                          child: Text(
                                            "Song . Nirvana",
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
                            ),
                          ],
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
