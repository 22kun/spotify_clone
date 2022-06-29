import 'package:flutter/material.dart';
import 'package:spotify_clone/home_screen.dart';

void main() {
  runApp(const Search());
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: 'Gotham'),
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
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.asset("assets/background/search_bg.png",
                  fit: BoxFit.fill),
            )
          ],
        ),
      ),
    );
  }
}
