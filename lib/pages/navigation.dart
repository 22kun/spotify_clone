import 'package:flutter/material.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/pages/playlist_screen.dart';
import 'package:spotify_clone/pages/search.dart';

void main() => runApp(const Navigation());

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: Container(
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
                  icon:
                      Image.asset("assets/icons/your_library.png", height: 30),
                  label: 'Your Library'),
            ],
            selectedItemColor: Colors.green,
            elevation: 5.0,
            unselectedItemColor: Colors.white,
            currentIndex: selectedPage,
            backgroundColor: Colors.black54,
            onTap: (index) {
              setState(() {
                selectedPage = index;
              });
            },
          ),
        ));
  }
}
