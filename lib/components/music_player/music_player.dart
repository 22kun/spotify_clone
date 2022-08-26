import 'dart:html';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';

import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/navigation.dart';

import '../../pages/playlist_screen.dart';

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
    setAudio();

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

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);

    final player = AudioCache(prefix: "assets/audio/");
    final url = await player.load("Queen_-_Dont_Stop_Me_Now.mp3");
    audioPlayer.setUrl(url.path, isLocal: true);
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
                        MaterialPageRoute(
                          builder: (context) => PlaylistScreen(
                              item0: Item(
                                app: HomeScreen(),
                                capa: "assets/playlists/this_is_queen.jpg",
                                name: "Somebody to Love",
                                artist: "Queen",
                              ),
                              item1: Item(
                                  app: MusicPlayer(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Don't Stop Me Now"),
                              item2: Item(
                                  app: HomeScreen(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Killer Queen"),
                              item3: Item(
                                  app: HomeScreen(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "I Want To Break Free"),
                              item4: Item(
                                  app: HomeScreen(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Bohemian Rhapsody"),
                              item5: Item(
                                  app: HomeScreen(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Love of My Life"),
                              item6: Item(
                                  app: HomeScreen(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Another One Bites The Dust"),
                              item7: Item(
                                  app: HomeScreen(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Radio Gaga"),
                              item8: Item(
                                  app: HomeScreen(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Under Pressure"),
                              item9: Item(
                                  app: HomeScreen(),
                                  artist: "Queen",
                                  capa: "assets/playlists/this_is_queen.jpg",
                                  name: "Sheer Heart-Attack"),
                              cover: "assets/playlists/this_is_queen.jpg",
                              label:
                                  "This is Queen. The essencial tracks, all in one playlist.",
                              title: "Queen"),
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 90,
                      ),
                      Column(children: [
                        Text(
                          'PLAYING FROM "THIS IS QUEEN"',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Poppins"),
                        ),
                      ]),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),

                // Album Cover

                SizedBox(
                  width: 450,
                  child: Image.asset("assets/playlists/this_is_queen.jpg",
                      fit: BoxFit.cover),
                ),
                SizedBox(height: 70),

                // Title
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      child: Text(
                        "Don't Stop Me Now",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 2),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      child: Text(
                        "Queen",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Poppins",
                            fontSize: 15),
                      ),
                    ),
                  ],
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
                    activeColor: Colors.white,
                    inactiveColor: Colors.white24,
                    min: 0,
                    max: duration.inSeconds.toDouble() + 215,
                    value: position.inSeconds.toDouble() + 1,
                    onChanged: (value) async {
                      final position = Duration(seconds: value.toInt());
                      await audioPlayer.seek(position);
                    }),
                Row(children: [
                  SizedBox(width: 30),
                  Text(
                    formatTime(position),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 380,
                  ),
                  Text(
                    "3:34",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  child: IconButton(
                    onPressed: () async {
                      if (isPlaying) {
                        await audioPlayer.pause();
                      } else {
                        await audioPlayer
                            .play("assets/audio/Queen_-_Dont_Stop_Me_Now.mp3");
                      }
                    },
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.black,
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
