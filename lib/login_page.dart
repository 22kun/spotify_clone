// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/home_screen.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            const SizedBox(
              height: 300,
            ),
            Image.asset('assets/icons/spotify_logo_white.png'),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Millions of songs',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Free on Spotify.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(height: 60),
            SizedBox(
              height: 50,
              width: 390,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                onPressed: () {},
                child: Text('Sign up free',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 50,
              width: 390,
              child: OutlinedButton.icon(
                style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                onPressed: () {},
                icon: Icon(Icons.phone_iphone_sharp, color: Colors.white),
                label: Text('Continue with phone number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 50,
              width: 390,
              child: OutlinedButton.icon(
                style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                onPressed: () {},
                icon: Icon(Icons.g_mobiledata, color: Colors.white),
                label: Text('Continue with Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 50,
              width: 390,
              child: OutlinedButton.icon(
                style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                onPressed: () {},
                icon: Icon(Icons.facebook, color: Colors.white),
                label: Text('Continue with facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
