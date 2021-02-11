import 'package:flutter/material.dart';
import 'package:spotify_ui/models/RecentlyPlay.dart';
import 'package:spotify_ui/screens/home/components/recentle_played_card.dart';

import '../../../constants.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
          left: kDefualtPadding,
          right: kDefualtPadding,
          bottom: kDefualtPadding),
      child: Row(
        children: [
          ...List.generate(demoRecentlyPlayder.length, (index) {
            return RecentlyPlayCard(recentlyPlayItem: demoRecentlyPlayder[index], index: index,);
          })
        ],
      ),
    );
  }
}

