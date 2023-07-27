import 'package:flutter/cupertino.dart';

class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl
  });

  static List<Song> songs = [
    Song(
      title: 'Cheques',
      description: 'Subh',
      url: 'assets/music/Cheques.mp3',
      coverUrl: 'assets/images/Cheques-1.jpg',
    ),
    Song(
      title: 'Aam Jahe Munde',
      description: 'Parmish Verma',
      url: 'assets/music/Aam Jahe Munde.mp3',
      coverUrl: 'assets/images/Aam-Jahe-Munde-1.jpg',
    ),
    Song(
      title: '12 Bande',
      description: 'Varinder Brar',
      url: 'assets/music/12 Bande.mp3',
      coverUrl: 'assets/images/12-Bande-1.jpg',
    )
  ];}
