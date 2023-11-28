import 'package:flutter/material.dart';
import 'package:flutter_learn/11ExpansionTileCard.dart';
import 'package:flutter_learn/13Dialogs.dart';
import 'package:flutter_learn/14Progressbar.dart';
import 'package:flutter_learn/15Staggeredgridview.dart';
import 'package:flutter_learn/16Cutomizingfont.dart';
import 'package:flutter_learn/18Themsofflutter.dart';
import 'package:flutter_learn/19Lazyloaderview.dart';
import 'package:flutter_learn/20Orientation.dart';
import 'package:flutter_learn/21Animationinroute.dart';
import 'package:flutter_learn/22Physicsanimation.dart';

import 'package:flutter_learn/3TutorialHome.dart';
import 'package:flutter_learn/8RichtextWidget.dart';
import 'package:flutter_learn/9TabBarDemo.dart';
import '12Datepicker.dart';
import '17Skeletontext.yaml.dart';
import '23Heroanimation.dart';
import '24HingAnimation.dart';
import '25LottieAnimation.dart';
import '26Formvalidator.dart';
import '4.Handling gestures.dart';
import '5Changingwidgetsinresponsetoinput.dart';
import '7Appbars.dart';
import 'Dashboard.dart';
import '6DrawerWidgetinFlutter.dart';
import '10HorizontalList.dart';

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
        home: FormValidator());
  }
}
