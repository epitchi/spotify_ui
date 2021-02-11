import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/components/title.dart';
import 'package:spotify_ui/constants.dart';
import 'package:spotify_ui/models/PlayList.dart';
import 'package:spotify_ui/models/Popular.dart';
import 'package:spotify_ui/models/RecentlyPlay.dart';
import 'package:spotify_ui/screens/home/components/popular_items.dart';
import 'package:spotify_ui/screens/home/components/recently_played.dart';

import 'explore_button.dart';
import 'my_play_lists.dart';
import 'year_wrap_up.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        child: Column(
          children: [
            TitleBar(
              title: 'MY PLAYLISTS',
            ),
            MyPlayLists(),
            ExploreButton(),
            TitleBar(
              title: '2020 wrapped',
            ),
            YearWrapup(),
            TitleBar(
              title: 'RECENTLY PLAYED',
            ),
            RecentlyPlayed(),
            TitleBar(
              title: 'POPULAR',
            ),
            PopularItems()
          ],
        ),
      ),
    );
  }
}

