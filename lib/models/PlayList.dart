import 'package:flutter/material.dart';

class PlayList {
  final int id;
  final String title;
  final String date;
  final String image;

  PlayList({
    @required this.id,
    @required this.title,
    @required this.date,
    @required this.image,
  });
}

List<PlayList> demoPlayLists = [
  PlayList(
      id: 1,
      title: 'Dark',
      date: 'Create Dec 2020',
      image: 'assets/images/p1.png'),
  PlayList(
      id: 2,
      title: 'My Mix',
      date: 'Create Jan 2020',
      image: 'assets/images/p2.png'),
  PlayList(
      id: 3,
      title: 'Lamar',
      date: 'Create Jun 2020',
      image: 'assets/images/p3.png'),
];
