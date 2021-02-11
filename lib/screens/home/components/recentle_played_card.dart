import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/models/RecentlyPlay.dart';

import '../../../constants.dart';

class RecentlyPlayCard extends StatelessWidget {
  const RecentlyPlayCard({
    Key key,
    @required this.recentlyPlayItem,
    @required this.index,
  }) : super(key: key);

  final RecentlyPlay recentlyPlayItem;
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
          width: size.width * 0.35,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: new BorderRadius.all(Radius.circular(0)),
                    child: Image.asset(recentlyPlayItem.image),
                  ),
                  Positioned.fill(
                      child: Container(
                    width: size.width * 0.35,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(100.0),
                        gradient: new LinearGradient(
                          colors: [
                            index % 2 == 1
                                ? kRecentPlayOverlayColor1.withOpacity(.2)
                                : kRecentPlayOverlayColor2.withOpacity(.2),
                            Colors.white.withOpacity(.2),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                  ))
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                recentlyPlayItem.title,
                style: TextStyle(
                  color: kTextColor,
                  letterSpacing: 2,
                  fontSize: 12.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
