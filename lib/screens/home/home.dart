import 'package:flutter/material.dart';
import 'package:spotify_ui/components/app_bar.dart';
import 'package:spotify_ui/components/tab_bar.dart';
import 'package:spotify_ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, title: 'GOOD MORNING!'),
        body: Body(),
        bottomNavigationBar: CustomTabBar());
  }
}


