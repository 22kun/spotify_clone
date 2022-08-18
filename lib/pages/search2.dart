import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home_screen/collection.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/pages/search.dart';

class Search_Page extends StatefulWidget {
  const Search_Page({Key? key}) : super(key: key);

  @override
  State<Search_Page> createState() => _Search_PageState();
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
                  height: 50,
                  width: 400,
                  child: TextField(),
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
