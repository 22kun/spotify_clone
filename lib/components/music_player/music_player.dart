import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:spotify_clone/pages/home_screen.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  void initState() {
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/home_screen_bg.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 70,
                  child: FlatButton(
                    textColor: Colors.white,
                    child: Text(
                      "<",
                      style: TextStyle(fontSize: 40, fontFamily: "Poppins"),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                // Album Cover

                SizedBox(
                  width: 300,
                  child: Image.asset("assets/playlists/this_is_queen.jpg",
                      fit: BoxFit.cover),
                ),
                SizedBox(height: 20),

                // Title
                Center(
                  child: Text(
                    "aaaa",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),

                SizedBox(height: 2),
                Center(
                  child: Text(
                    "aaaa",
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Poppins",
                        fontSize: 15),
                  ),
                ),
                SizedBox(height: 10),

                SizedBox(
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                  ]),
                ),
                Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      final position = Duration(seconds: value.toInt());
                      await audioPlayer.seek(position);
                    }),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        formatTime(position),
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        formatTime(duration - position),
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                CircleAvatar(
                  radius: 35,
                  child: IconButton(
                    onPressed: () async {
                      if (isPlaying) {
                        await audioPlayer.pause();
                      } else {
                        String url =
                            'https://fine.sunproxy.net/file/eHh4cHl1cFNXT01NU2RES2tTRHZjWmlGY3RJbEVHWDQvemUvRHdMVUxFaXllaUNEU1VRR0JzekdCYnpyNjkwZE1SRnpqaU1FZHlvMnltT0NMWjBKZTRURlhBcnZjZTQrQzBUSTBnS2FybU09/queen_david_bowie_-_under_pressure_(BornMP3.com).mp3';
                        await audioPlayer.play(url);
                      }
                    },
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                    ),
                    iconSize: 50,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 420,
                  child: Column(children: []),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
