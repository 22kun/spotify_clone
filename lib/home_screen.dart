import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_clone/login_page.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: 'Gotham'),
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
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
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
                          //       builder: (context) => LoginPage()),
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
                                            'assets/background/home_screen_bg.png'),
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
                                    "assets/playlists/ordem_para_desc_album.jpeg"),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/background/home_screen_bg.png'),
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
                                Image.asset("assets/playlists/queen_logo.jpg"),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/background/home_screen_bg.png'),
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
                                            'assets/background/home_screen_bg.png'),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
