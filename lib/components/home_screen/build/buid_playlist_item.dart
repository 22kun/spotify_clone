import 'package:flutter/widgets.dart';
import 'package:spotify_clone/components/music_player/build_music_player.dart';
import 'package:spotify_clone/components/music_player/music_player.dart';
import 'package:spotify_clone/components/playlist_screen/item.dart';
import 'package:spotify_clone/pages/home_screen.dart';

class BuildPSItems {
  this_is_queen(int item_number) {
    switch (item_number) {
      case 0:
        return Item(
          app: BuildMusicPlayer().queen(0),
          capa: "assets/playlists/this_is_queen.jpg",
          name: "Somebody to Love",
          artist: "Queen",
        );
      case 1:
        return Item(
            app: BuildMusicPlayer().queen(1),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "Don't Stop Me Now");
      case 2:
        return Item(
            app: BuildMusicPlayer().queen(2),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "Killer Queen");
      case 3:
        return Item(
            app: BuildMusicPlayer().queen(3),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "I Want To Break Free");
      case 4:
        return Item(
            app: BuildMusicPlayer().queen(4),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "Bohemian Rhapsody");
      case 5:
        return Item(
            app: BuildMusicPlayer().queen(5),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "Love of My Life");
      case 6:
        return Item(
            app: BuildMusicPlayer().queen(6),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "Another One Bites The Dust");
      case 7:
        return Item(
            app: BuildMusicPlayer().queen(7),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "Radio Ga Ga");
      case 8:
        return Item(
            app: BuildMusicPlayer().queen(8),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "Under Pressure");
      case 9:
        return Item(
            app: BuildMusicPlayer().queen(9),
            artist: "Queen",
            capa: "assets/playlists/this_is_queen.jpg",
            name: "Sheer Heart-Attack");
    }
  }

  paranoid(int item_number) {
    switch (item_number) {
      case 0:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "War Pigs",
            artist: "Black Sabbath");
      case 1:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "Paranoid",
            artist: "Black Sabbath");
      case 2:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "Planet Caravan",
            artist: "Black Sabbath");
      case 3:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "Iron Man",
            artist: "Black Sabbath");
      case 4:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "Electric Funeral",
            artist: "Black Sabbath");
      case 5:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "Hand of Doom",
            artist: "Black Sabbath");
      case 6:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "Rat Salad",
            artist: "Black Sabbath");
      case 7:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "Fairies Wear Boots",
            artist: "Black Sabbath");
      case 8:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "War Pigs",
            artist: "Black Sabbath");
      case 9:
        return Item(
            app: HomeScreen(),
            capa: "assets/songs/paranoid_sabbath.jpg",
            name: "Paranoid",
            artist: "Black Sabbath");
    }
  }

  led_zeppelin(int item_number) {
    switch (item_number) {
      case 0:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "Black Dog",
        );
      case 1:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "Rock and Roll",
        );
      case 2:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "The Battle of Evermore",
        );
      case 3:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "Stairway to Heaven",
        );
      case 4:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "Misty Mountain",
        );
      case 5:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "Four Sticks",
        );
      case 6:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "Going to California",
        );
      case 7:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "When the Levee Breaks",
        );
      case 8:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "Black Dog - Basic Track with Guitar Overdubs",
        );
      case 9:
        return Item(
          app: HomeScreen(),
          artist: "Led Zeppelin",
          capa: "assets/songs/stairway_led.jpeg",
          name: "Four Sticks - Alternate Mix",
        );
    }
  }

  desconjuracao(int item_number) {
    switch (item_number) {
      case 0:
        return Item(
          app: HomeScreen(),
          name: "Abertura (Desconjuração)",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 1:
        return Item(
          app: HomeScreen(),
          name: "Sangue",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 2:
        return Item(
          app: HomeScreen(),
          name: "Novo Lar",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 3:
        return Item(
          app: HomeScreen(),
          name: "Fantasmas",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 4:
        return Item(
          app: HomeScreen(),
          name: "Corre",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 5:
        return Item(
          app: HomeScreen(),
          name: "Outro Lado",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 6:
        return Item(
          app: HomeScreen(),
          name: "Veríssimo",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 7:
        return Item(
          app: HomeScreen(),
          name: "Sorriso",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 8:
        return Item(
          app: HomeScreen(),
          name: "Kian",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
      case 9:
        return Item(
          app: HomeScreen(),
          name: "Máscaras",
          capa: "assets/playlists/ordem_para_desc_album.jpeg",
          artist: 'Julio Victor',
        );
    }
  }
}
