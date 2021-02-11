import 'package:flutter/material.dart';
import 'package:spotify_ui/models/PlayList.dart';
import 'package:spotify_ui/models/Popular.dart';
import 'package:spotify_ui/screens/home/components/popular_card.dart';

import '../../../constants.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(
            left: kDefualtPadding,
            right: kDefualtPadding,
            bottom: kDefualtPadding),
        child: Row(
          children: [
            ...List.generate(demoPlayLists.length, (index) {
              return PopularCard(popularItem: demoPopular[index], index: index,);
            })
          ],
        ),
      ),
    );
  }
}

