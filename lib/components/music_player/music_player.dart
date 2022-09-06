import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home_screen/build/build_playlist_screen.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:flutter/services.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import '../../pages/playlist_screen.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  AudioPlayer audioPlayer = AudioPlayer();
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
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 60,
                  width: 70,
                  child: GestureDetector(
                    child: Text(
                      "<",
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Poppins",
                          color: Colors.white),
                    ),
                    onTap: () {
                      audioPlayer.stop();
                      Navigator.of(
                        context,
                      ).pop();
                    },
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
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
                  height: 80,
                ),

                // Album Cover

                SizedBox(
                  width: 340,
                  child: Image.asset("assets/playlists/this_is_queen.jpg",
                      fit: BoxFit.cover),
                ),
                SizedBox(height: 90),

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

                SizedBox(
                  width: 400,
                  child: Slider(
                      activeColor: Colors.white,
                      inactiveColor: Colors.white24,
                      min: 0,
                      max: duration.inSeconds.toDouble(),
                      value: position.inSeconds.toDouble(),
                      onChanged: (value) async {
                        final position = Duration(seconds: value.toInt());
                        await audioPlayer.seek(position);
                      }),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formatTime(position),
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          formatTime(duration),
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  child: IconButton(
                    onPressed: () async {
                      if (isPlaying) {
                        await audioPlayer.stop();
                      } else {
                        String audioasset =
                            "assets/audio/queen_-_dont_stop_me_now.mp3";
                        ByteData bytes = await rootBundle
                            .load(audioasset); //load sound from assets
                        Uint8List soundbytes = bytes.buffer.asUint8List(
                            bytes.offsetInBytes, bytes.lengthInBytes);
                        int result = await audioPlayer.playBytes(soundbytes);
                        if (result == 1) {
                          print("Sound playing successful.");
                        } else {
                          print("Error while playing sound.");
                        }
                      }
                    },
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.black,
                    ),
                    iconSize: 50,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
