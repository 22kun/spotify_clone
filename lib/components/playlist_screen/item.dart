import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/playlist_screen.dart';

class Item extends StatelessWidget {
  String capa;
  String name;
  String artist;

  Item({required this.capa, required this.name, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [Image.asset(capa)]),
    );
  }
}
