import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/models/PlayList.dart';

import '../../../constants.dart';
import 'play_list_card.dart';

class MyPlayLists extends StatelessWidget {
  const MyPlayLists({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
              left: kDefualtPadding,
              right: kDefualtPadding,
              bottom: kDefualtPadding),
          child: Row(
            children: [
              ...List.generate(demoPlayLists.length, (index) {
                return PlayListCard(
                  playListItem: demoPlayLists[index],
                  index: index,
                );
              })
            ],
          ),
        )
      ],
    );
  }
}
