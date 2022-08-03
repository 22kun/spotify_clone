import 'package:flutter/material.dart';
import 'package:spotify_clone/components/search/genres.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/login_page.dart';

void main() {
  runApp(const Search());
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Gotham'),
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
      body: ListView(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: TextField(
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      "assets/icons/search.webp",
                      width: 10,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hoverColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Artists, songs, or podcasts',
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
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
    );
  }
}
