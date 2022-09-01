import 'package:flutter/material.dart';
import 'package:spotify_clone/components/music_player/music_player.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/pages/playlist_screen.dart';
import 'package:spotify_clone/pages/search.dart';
import 'package:spotify_clone/pages/search2.dart';

void main() => runApp(const Navigation());

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  static const String _title = 'Spotify Clone';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int selectedPage = 0;

  final _pageOptions = [
    HomeScreen(),
    Search(),
    MusicPlayer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOptions[selectedPage],
        bottomNavigationBar: SizedBox(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background/nav_bar.png'),
                  fit: BoxFit.fill),
            ),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icons/home.png",
                      height: 30,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icons/search.png",
                      height: 30,
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/your_library.png",
                        height: 30),
                    label: 'Your Library'),
              ],
              selectedItemColor: Colors.green,
              elevation: 9.0,
              unselectedItemColor: Colors.white,
              backgroundColor: Colors.black45,
              currentIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
            ),
          ),
        ));
  }
}
