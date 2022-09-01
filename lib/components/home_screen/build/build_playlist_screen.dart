import 'package:spotify_clone/components/home_screen/build/buid_playlist_item.dart';
import 'package:spotify_clone/components/music_player/music_player.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:spotify_clone/pages/home_screen.dart';
import 'package:spotify_clone/pages/playlist_screen.dart';

class BuildPScreen {
  build(String name) {
    switch (name) {

      // Build This Is Queen
      case "this_is_queen":
        return PlaylistScreen(
            item0: BuildPSItems().this_is_queen(0),
            item1: BuildPSItems().this_is_queen(1),
            item2: BuildPSItems().this_is_queen(2),
            item3: BuildPSItems().this_is_queen(3),
            item4: BuildPSItems().this_is_queen(4),
            item5: BuildPSItems().this_is_queen(5),
            item6: BuildPSItems().this_is_queen(6),
            item7: BuildPSItems().this_is_queen(7),
            item8: BuildPSItems().this_is_queen(8),
            item9: BuildPSItems().this_is_queen(9),
            cover: "assets/playlists/this_is_queen.jpg",
            label: "This is Queen. The essencial tracks, all in one playlist.",
            title: "Queen");
      //----------------------------------------------------------------------------------

      // Build Paranoid
      case "paranoid":
        return PlaylistScreen(
          cover: "assets/songs/paranoid_sabbath.jpg",
          title: "Paranoid",
          label:
              "This is Black Sabbath. The essential tracks, all in one playlist.",
          item0: BuildPSItems().paranoid(0),
          item1: BuildPSItems().paranoid(1),
          item2: BuildPSItems().paranoid(2),
          item3: BuildPSItems().paranoid(3),
          item4: BuildPSItems().paranoid(4),
          item5: BuildPSItems().paranoid(5),
          item6: BuildPSItems().paranoid(6),
          item7: BuildPSItems().paranoid(7),
          item8: BuildPSItems().paranoid(8),
          item9: BuildPSItems().paranoid(9),
        );
      //-------------------------------------------------------------

      // Build Led Zeppelin IV (Deluxe Edition)
      case "led_zeppelin_iv":
        return PlaylistScreen(
          label:
              "This is Led Zeppelin. The essential tracks, all in one playlist.",
          cover: "assets/songs/stairway_led.jpeg",
          title: "Led Zeppelin IV (Deluxe Edition)",
          item0: BuildPSItems().led_zeppelin(0),
          item1: BuildPSItems().led_zeppelin(1),
          item2: BuildPSItems().led_zeppelin(2),
          item3: BuildPSItems().led_zeppelin(3),
          item4: BuildPSItems().led_zeppelin(4),
          item5: BuildPSItems().led_zeppelin(5),
          item6: BuildPSItems().led_zeppelin(6),
          item7: BuildPSItems().led_zeppelin(7),
          item8: BuildPSItems().led_zeppelin(8),
          item9: BuildPSItems().led_zeppelin(9),
        );
      // ----------------------------------------------------------------

      // Build Ordem Paranormal: Desconjuração (Trilha Sonora)
      case "desconjuracao":
        return PlaylistScreen(
          cover: "assets/playlists/ordem_para_desc_album.jpeg",
          title: "Ordem Paranormal: Desconjuração (Trilha Sonora)",
          label: "",
          item0: BuildPSItems().desconjuracao(0),
          item1: BuildPSItems().desconjuracao(1),
          item2: BuildPSItems().desconjuracao(2),
          item3: BuildPSItems().desconjuracao(3),
          item4: BuildPSItems().desconjuracao(4),
          item5: BuildPSItems().desconjuracao(5),
          item6: BuildPSItems().desconjuracao(6),
          item7: BuildPSItems().desconjuracao(7),
          item8: BuildPSItems().desconjuracao(8),
          item9: BuildPSItems().desconjuracao(9),
        );
    }
    ;
  }
}
