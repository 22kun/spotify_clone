import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home_screen/collection.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/pages/search.dart';
import 'dart:html';

class Search_Page extends StatefulWidget {
  const Search_Page({Key? key}) : super(key: key);

  @override
  State<Search_Page> createState() => _Search_PageState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Gotham-Bold'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _Search_PageState extends State<Search_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/background/home_screen_bg.png",
              ),
              fit: BoxFit.cover)),
      child: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      );
                    },
                    child: Text("<"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 20,
                  width: 400,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: 'Search Query',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 13,
          ),
        ],
      ),
    ));
  }
}
