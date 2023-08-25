import 'package:flutter/material.dart';
import 'package:flutter_learn/3TutorialHome.dart';
import 'package:flutter_learn/8RichtextWidget.dart';
import '4.Handling gestures.dart';
import '5Changingwidgetsinresponsetoinput.dart';
import '7Appbars.dart';
import 'Dashboard.dart';
import '6DrawerWidgetinFlutter.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
  //  home : MyhomepageRichTextBox(),
    );
  }
}
