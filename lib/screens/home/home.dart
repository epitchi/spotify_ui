import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_ui/components/app_bar.dart';
import 'package:spotify_ui/components/tab_bar.dart';
import 'package:spotify_ui/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, title: 'Chào buổi sáng!'),
        bottomNavigationBar: CustomTabBar());
  }
}

