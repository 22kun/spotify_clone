import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  Widget app;
  String asset;
  String info;

  Collection({required this.asset, required this.app, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
            child: Image.asset(
              asset,
              width: 172,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => app),
              );
            }),
        SizedBox(
          height: 19,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 190,
              child: Text(
                info,
                style: TextStyle(
                    color: Colors.white38, fontSize: 15, fontFamily: 'Poppins'),
              ),
            )
          ],
        )
      ],
    );
  }
}
