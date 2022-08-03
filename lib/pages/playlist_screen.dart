import 'package:flutter/material.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:spotify_clone/pages/navigation.dart';

class PlaylistScreen extends StatelessWidget {
  String cover;
  String title;
  String label;

  PlaylistScreen({
    required this.cover,
    required this.title,
    required this.label,
    Item,
  });

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Hello World")],
        ),
      ),
    );
  }
}
