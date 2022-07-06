import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/login_page.dart';

class Genre extends StatelessWidget {
  Color color;
  String name;
  Widget app;
  String asset;
  Genre(
      {required this.color,
      required this.name,
      required this.app,
      required this.asset});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => app),
                );
              }),
              child: Container(
                  height: 109,
                  width: 184,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              name,
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                          ),
                          // Container(
                          //   child: RotationTransition(
                          //     turns: AlwaysStoppedAnimation(15 / 360),
                          //     child: Image.asset(
                          //       "",
                          //       height: 82,
                          //       width: 80,
                          //     ),
                          //   ),
                          // )
                        ],
                      )
                    ],
                  )),
            )
          ],
        )
      ],
    );
  }
}
