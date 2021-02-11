import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/models/Popular.dart';

import '../../../constants.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    @required this.popularItem,
    @required this.index,
    Key key,
  }) : super(key: key);

  final Popular popularItem;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DelayedDisplay(
      delay: Duration(milliseconds: 100 * index + 1),
      fadingDuration: Duration(milliseconds: 600 * index + 1),
      child: Padding(
          padding: EdgeInsets.only(right: kDefualtPadding),
          child: SizedBox(
            width: size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: new BoxDecoration(boxShadow: [
                        BoxShadow(
                          blurRadius: 6,
                          color: Colors.black.withAlpha(40),
                          offset: const Offset(0, 0),
                        )
                      ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(popularItem.image),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        width: size.width * 0.4,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kPopularCardOverlayColor.withAlpha(40),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  popularItem.title,
                  style: TextStyle(color: kTextColor, fontSize: 12.0),
                )
              ],
            ),
          )),
    );
  }
}
