import 'package:flutter/material.dart';
import 'package:flutter_learn/13Dialogs.dart';
import 'package:flutter_learn/14Progressbar.dart';
import 'package:flutter_learn/15Staggeredgridview.dart';
import 'package:flutter_learn/16Cutomizingfont.dart';
import 'package:flutter_learn/17Skeletontext.yaml.dart';
import 'package:flutter_learn/18Themsofflutter.dart';
import 'package:flutter_learn/19Lazyloaderview.dart';
import 'package:flutter_learn/20Orientation.dart';
import 'package:flutter_learn/21Animationinroute.dart';
import 'package:flutter_learn/22Physicsanimation.dart';
import 'package:flutter_learn/24HingAnimation.dart';
import 'package:flutter_learn/2Appbar.dart';
import 'package:flutter_learn/3TutorialHome.dart';
import 'package:flutter_learn/8RichtextWidget.dart';
import 'package:flutter_learn/9TabBarDemo.dart';
import '10HorizontalList.dart';
import '11ExpansionTileCard.dart';
import '12Datepicker.dart';
import '1Helloworld.dart';
import '23Heroanimation.dart';
import '25LottieAnimation.dart';
import '26Formvalidator.dart';
import '27Desugningformsubmission.dart';
import '28OpenInbrowser.dart';
import '4.Handling gestures.dart';
import '5Changingwidgetsinresponsetoinput.dart';
import '6DrawerWidgetinFlutter.dart';
import '7Appbars.dart';

class DashboardScreen extends StatelessWidget {
  // const DashboardScreen({super.key});

  static const String helloWolrdRoute = '1.Hello World';
  static const String myScaffoldRoute = '2.Basic widgets';
  static const String TutorialHomeRoute = '3.Using Material Components';
  static const String myButtonRoute = '4.Handling gestures';
  static const String counterRoute = '5.Changing widgets in response to input';
  static const String drawerWidgetRoute = '6.Drawer Widget in Flutter';
  static const String appbardRoutes = '7.Appbars in built widgets';
  static const String richtextRoutes = '8.Rich Text Widgets';
  static const String tabbarDemoRoutes = '9.TabBar Demo Routes';
  static const String horiZontalListRoute = '10.Horizontal List';
  static const String expensioNalTileCardRoute = '11.Expansion Tile Card';
  static const String datePickerRoute = '12.Date picker route';
  static const String dialogsRoute = '13.Dialog box Route';
  static const String proGressBarRoutes = '14.ProgressBar';
  static const String staggeredGridRoutes = '15.Staggered Grid View';
  static const String customizingFontRoutes = '16.Customizing font';
  static const String skeletonRoutes = '17.Skeleton';
  static const String themsOfflutterRoutes = '18.Themes of flutter';
  static const String LazyLoaderRoutes = '19.Lazy Loader View';
  static const String orienTationRoutes = '20.Orientation ';
  static const String animationRoutes = '21.Animation Route';
  static const String physicalAnimationRoutes = '22.Physical Animation';
  static const String HeroAnimationRoutes = '23.Hero Animation';
  static const String hingeAnimationRoutes = '24.Hinge Animation';
  static const String lottiAnimationRoutes = '25.Lottie Animation';
  static const String formsValidation = '26.form validation ';
  static const String openinBrowserurl = '27.Open in Browser';

  static const String formdesinrote = '27.Formdesign';

  // static const String Routes = '';

  Map<String, Widget> get introductionRoutes => {
    helloWolrdRoute: const HelloWorldScreen(),
    myScaffoldRoute: const MyScaffold(),
    TutorialHomeRoute: const TutorialHome(),
    myButtonRoute: const MyButton(),
    counterRoute: const Counter2(),
  };

  final Map<String, Widget> keyWidgetsRoutes = {
    drawerWidgetRoute: const MyHomePage(
      title: 'this is Drawer',
    ),
    appbardRoutes: const Appbars(),
    richtextRoutes: const MyhomepageRichTextBox(),
  };

  final Map<String, Widget> uiComponentsRoutes = {
    tabbarDemoRoutes: const TabBarDemo(),
    horiZontalListRoute: const MyList(),
    expensioNalTileCardRoute: const ExpansionTileCardWidget(
      title: 'Expansion Tile Card',
    ),
    datePickerRoute: const Datepickerwidget(),
    dialogsRoute: const Dialogs(),
    proGressBarRoutes: const Loader(),
    staggeredGridRoutes: const Staggredgridview(),
  };

  final Map<String, Widget> designAnimationRoute = {
    customizingFontRoutes: Custumfonts(),
    skeletonRoutes: const Skeletontext(),
    themsOfflutterRoutes: const Themsflutter(),
    LazyLoaderRoutes: const Lazyloader(
      titles: 'Lazy loader',
    ),
    orienTationRoutes: MyOrientation(title: 'Orientation '),
    animationRoutes: const Animationpage(),
    physicalAnimationRoutes: const PhysicsCard(),
    HeroAnimationRoutes: const RadialDemoHero(),
    hingeAnimationRoutes: const HingAnimation(),
    lottiAnimationRoutes: const LottiePage(),
  };

  final Map<String, Widget> formsandGesturesroute = {
    formsValidation: FormValidator(),
    formdesinrote: const Formdesign(),
    openinBrowserurl: const OpenInbrowser()
  };

  final Map<String, Widget> navigationandRouting = {
    openinBrowserurl: const OpenInbrowser()
  };

  void navigateToScreen(BuildContext context, String routeName, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  DropdownButton<String> buildDropdownButton(
      BuildContext context, String hint, Map<String, Widget> items) {
    return DropdownButton<String>(
      hint: Text(hint),
      onChanged: (String? newValue) {
        if (newValue != null && items.containsKey(newValue)) {
          navigateToScreen(context, newValue, items[newValue]!);
        }
      },
      items: items.keys.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        children: [
          const Text('User Interface'),
          buildDropdownButton(context, 'Select a screen', introductionRoutes),
          const Text('Key Widgtes'),
          buildDropdownButton(context, 'Select Key Widgtes', keyWidgetsRoutes),
          const Text('Ui Components'),
          buildDropdownButton(context, 'Select Components', uiComponentsRoutes),
          const Text('Desing and Animation'),
          buildDropdownButton(
              context, 'Select Design or Animation', designAnimationRoute),
          const Text('Forms and Gestures'),
          buildDropdownButton(
              context, 'select Forms and Gestures', formsandGesturesroute)
        ],
      ),
    );
  }
}
