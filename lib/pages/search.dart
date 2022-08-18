import 'package:flutter/material.dart';
import 'package:spotify_clone/components/search/genres.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/pages/search2.dart';

void main() {
  runApp(const Search());
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Gotham-Bold'),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Spotify'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black87,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/home_screen_bg.png'),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 470,
                  child: OutlinedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        side: MaterialStateProperty.all(BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                            style: BorderStyle.solid)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search_Page()),
                      );
                    },
                    icon: Image.asset("assets/icons/search.webp"),
                    label: Text('Artists, songs, or podcasts',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                        )),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 50,
                        ),
                        Text(
                          "Your top genres",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Genre(
                        color: Colors.red,
                        name: "Rock",
                        app: LoginPage(),
                        asset: ""),
                    Genre(
                        color: Colors.grey,
                        name: "Metal",
                        app: LoginPage(),
                        asset: ""),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 10,
                        ),
                        Text(
                          "Popular podcast categories",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Genre(
                        color: Colors.purple,
                        name: "Podcasts Premieres",
                        app: LoginPage(),
                        asset: ""),
                    Genre(
                        color: Colors.brown,
                        name: "Originals & Exclusives",
                        app: LoginPage(),
                        asset: ""),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Browse all",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Genre(
                        color: Colors.orange,
                        name: "Podcasts",
                        app: LoginPage(),
                        asset: ""),
                    Genre(
                        color: Colors.blue,
                        name: "Made for you",
                        app: LoginPage(),
                        asset: ""),
                  ],
                ),
                Row(
                  children: [
                    Genre(
                        color: Colors.purpleAccent.shade700,
                        name: "Charts",
                        app: LoginPage(),
                        asset: ""),
                    Genre(
                        color: Colors.pink,
                        name: "New Releases",
                        app: LoginPage(),
                        asset: ""),
                  ],
                ),
                Row(
                  children: [
                    Genre(
                        color: Colors.pink.shade900,
                        name: "Radio",
                        app: LoginPage(),
                        asset: ""),
                    Genre(
                        color: Color.fromARGB(255, 172, 123, 241),
                        name: "Discover",
                        app: LoginPage(),
                        asset: ""),
                  ],
                ),
                Row(
                  children: [
                    Genre(
                        color: Color.fromARGB(255, 63, 81, 183),
                        name: "Live Events",
                        app: LoginPage(),
                        asset: ""),
                    Genre(
                        color: Color.fromARGB(255, 190, 4, 4),
                        name: "Experience EQUALS",
                        app: LoginPage(),
                        asset: ""),
                  ],
                ),
                Row(
                  children: [
                    Genre(
                        color: Color.fromARGB(255, 221, 179, 53),
                        name: "Brazil",
                        app: LoginPage(),
                        asset: ""),
                    Genre(
                        color: Color.fromARGB(255, 101, 13, 32),
                        name: "Sertanejo",
                        app: LoginPage(),
                        asset: ""),
                  ],
                ),
                Row(
                  children: [
                    Genre(
                        color: Color.fromARGB(255, 0, 255, 204),
                        name: "Funk",
                        app: LoginPage(),
                        asset: ""),
                    Genre(
                        color: Color.fromARGB(255, 48, 119, 174),
                        name: "At Home",
                        app: LoginPage(),
                        asset: ""),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
