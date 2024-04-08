import 'package:flutter/material.dart';

const backgroundColor = Color.fromARGB(255, 38, 42, 46);
const blueBackgroundColor = Color.fromARGB(113, 50, 55, 59);

const SizedBox cHeight10 = SizedBox(height: 10);
const splashImage = 'assets/splash_animation.json';

const list = [
  {
    'text': 'Favorites',
    'icon': Icon(
      Icons.favorite_border,
      color: Colors.white,
    ),
  },
  {
    'text': 'Recently Played',
    'icon': Icon(
      Icons.music_note,
      color: Colors.white,
    ),
  },
  {
    'text': 'Mostly Played',
    'icon': Icon(
      Icons.play_arrow_rounded,
      color: Colors.white,
    ),
  },
  {
    'text': 'Search',
    'icon': Icon(
      Icons.search,
      color: Colors.white,
    ),
  },
];

class MusicModel {
  final String name;
  final String image;
  bool isFavorite;

  MusicModel({
    required this.name,
    required this.image,
    required this.isFavorite,
  });
}

final abc = [
  MusicModel(
    name: 'song1',
    image:
        'https://images.pexels.com/photos/17022636/pexels-photo-17022636/free-photo-of-redhead-with-freckles-wearing-makeup.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isFavorite: false,
  ),
  MusicModel(
    name: 'song2',
    image:
        'https://images.pexels.com/photos/17022636/pexels-photo-17022636/free-photo-of-redhead-with-freckles-wearing-makeup.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isFavorite: false,
  ),
  MusicModel(
    name: 'song3',
    image:
        'https://images.pexels.com/photos/17022636/pexels-photo-17022636/free-photo-of-redhead-with-freckles-wearing-makeup.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isFavorite: false,
  ),
  MusicModel(
    name: 'song4',
    image:
        'https://images.pexels.com/photos/17022636/pexels-photo-17022636/free-photo-of-redhead-with-freckles-wearing-makeup.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isFavorite: false,
  ),
  MusicModel(
    name: 'song5',
    image:
        'https://images.pexels.com/photos/17022636/pexels-photo-17022636/free-photo-of-redhead-with-freckles-wearing-makeup.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isFavorite: false,
  ),
];
