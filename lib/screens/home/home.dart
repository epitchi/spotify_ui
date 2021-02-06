import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_ui/components/app_bar.dart';
import 'package:spotify_ui/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Chào buổi sáng!'),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: new BoxDecoration(
          color: kTabBarColor,
          borderRadius: BorderRadius.circular(80.0)
        )
      )
    );
  }
}

