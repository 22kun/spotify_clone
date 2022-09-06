import 'package:flutter/material.dart';
import 'package:spotify_clone/components/music_player/music_player.dart';

class BuildMusicPlayer {
  queen(int song) {
    switch (song) {
      case 0:
        return MusicPlayer(
            musicPath: "assets/audio/somebody_to_love.mp3",
            songName: "Somebody To Love",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 1:
        return MusicPlayer(
            musicPath: "assets/audio/dont_stop_me_now.mp3",
            songName: "Don't Stop Me Now",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 2:
        return MusicPlayer(
            musicPath: "assets/audio/killer_queen.mp3",
            songName: "Killer Queen",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 3:
        return MusicPlayer(
            musicPath: "assets/audio/i_want_to_break_free.mp3",
            songName: "I Want To Break Free",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 4:
        return MusicPlayer(
            musicPath: "assets/audio/bohemian_rhapsody.mp3",
            songName: "Bohemian Rhapsody",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 5:
        return MusicPlayer(
            musicPath: "assets/audio/love_of_my_life.mp3",
            songName: "Love of My Life",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 6:
        return MusicPlayer(
            musicPath: "assets/audio/another_one_bites_the_dust.mp3",
            songName: "Another One Bites The Dust",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 7:
        return MusicPlayer(
            musicPath: "assets/audio/radio_ga_ga.mp3",
            songName: "Radio Ga Ga",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 8:
        return MusicPlayer(
            musicPath: "assets/audio/under_pressure.mp3",
            songName: "Under Pressure",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
      case 9:
        return MusicPlayer(
            musicPath: "assets/audio/sheer_heart_attack.mp3",
            songName: "Sheer Heart-Attack",
            artist: "Queen",
            cover: "assets/playlists/this_is_queen.jpg");
    }
  }

  led(int song) {
    switch (song) {
      case 0:
        return;
      case 1:
        return;
      case 2:
        return;
      case 3:
        return;
      case 4:
        return;
      case 5:
        return;
      case 6:
        return;
      case 7:
        return;
      case 8:
        return;
      case 9:
        return;
    }
  }

  paranoid(int song) {
    switch (song) {
      case 0:
        return MusicPlayer(
            musicPath: "assets/audio/war_pigs.mp3",
            songName: "War Pigs",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 1:
        return MusicPlayer(
            musicPath: "assets/audio/paranoid.mp3",
            songName: "Paranoid",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 2:
        return MusicPlayer(
            musicPath: "assets/audio/planet_caravan.mp3",
            songName: "Planet Caravan",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 3:
        return MusicPlayer(
            musicPath: "assets/audio/iron_man.mp3",
            songName: "Iron Man",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 4:
        return MusicPlayer(
            musicPath: "assets/audio/electric_funeral.mp3",
            songName: "Electric Funeral",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 6:
        return MusicPlayer(
            musicPath: "assets/audio/rat_salad.mp3",
            songName: "Rat Salad",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 7:
        return MusicPlayer(
            musicPath: "assets/audio/fairies_wear_boots.mp3",
            songName: "Fairies Wear Boots",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 8:
        return MusicPlayer(
            musicPath: "assets/audio/war_pigs.mp3",
            songName: "War Pigs",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 9:
        return MusicPlayer(
            musicPath: "assets/audio/paranoid.mp3",
            songName: "Paranod",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
      case 5:
        return MusicPlayer(
            musicPath: "assets/audio/hand_of_doom.mp3",
            songName: "Hand of Doom",
            artist: "Black Sabbath",
            cover: "assets/songs/paranoid_sabbath.jpg");
    }
  }

  ordem(int song) {
    switch (song) {
      case 0:
        return MusicPlayer(
            musicPath: "assets/audio/abertura.mp3",
            songName: "Abertura (Desconjuração)",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 1:
        return MusicPlayer(
            musicPath: "assets/audio/sangue.mp3",
            songName: "Sangue",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 2:
        return MusicPlayer(
            musicPath: "assets/audio/novo_lar.mp3",
            songName: "Novo Lar",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 3:
        return MusicPlayer(
            musicPath: "assets/audio/fantasmas.mp3",
            songName: "Fantasmas",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 4:
        return MusicPlayer(
            musicPath: "assets/audio/corre.mp3",
            songName: "Corre",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 5:
        return MusicPlayer(
            musicPath: "assets/audio/outro_lado.mp3",
            songName: "Outro Lado",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 6:
        return MusicPlayer(
            musicPath: "assets/audio/verissimo.mp3",
            songName: "Veríssimo",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 7:
        return MusicPlayer(
            musicPath: "assets/audio/sorriso.mp3",
            songName: "Sorriso",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 8:
        return MusicPlayer(
            musicPath: "assets/audio/kian.mp3",
            songName: "Kian",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
      case 9:
        return MusicPlayer(
            musicPath: "assets/audio/mascaras.mp3",
            songName: "Máscaras",
            artist: "Júlio Victor",
            cover: "assets/playlists/ordem_para_desc_album.jpeg");
    }
  }
}
