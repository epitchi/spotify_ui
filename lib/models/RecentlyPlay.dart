import 'package:flutter/material.dart';

class RecentlyPlay {
  final int id;
  final String title;
  final String image;

  RecentlyPlay({@required this.id, @required this.title, @required this.image});
}

List<RecentlyPlay> demoRecentlyPlayder = [
  RecentlyPlay(id: 1, title: 'THE WEEKEND', image: 'assets/images/recent1.png'),
  RecentlyPlay(
      id: 2, title: 'KENDRICK LAMAR', image: 'assets/images/recent2.png'),
  RecentlyPlay(id: 3, title: 'EMINEM', image: 'assets/images/recent3.png'),
];
