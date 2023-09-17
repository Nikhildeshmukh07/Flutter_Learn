import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_learn/13Dialogs.dart';
import 'package:flutter_learn/14Progressbar.dart';
import 'package:flutter_learn/2Appbar.dart';
import 'package:flutter_learn/3TutorialHome.dart';
import 'package:flutter_learn/8RichtextWidget.dart';
import 'package:flutter_learn/9TabBarDemo.dart';
import '10HorizontalList.dart';
import '11ExpansionTileCard.dart';
import '12Datepicker.dart';
import '1Helloworld.dart';
import '4.Handling gestures.dart';
import '5Changingwidgetsinresponsetoinput.dart';
import '6DrawerWidgetinFlutter.dart';
import '7Appbars.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        children: [
          const Text('USer InterFace'),
          DropdownButton2<String>(
            hint: const Text('Introduction'),
            // Displayed when no item is selected
            onChanged: (String? newValue) {
              if (newValue == 'Hello World') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelloWorldScreen()),
                );
              } else if (newValue == 'MyScaffold') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyScaffold()),
                );
              } else if (newValue == 'TutorialHome') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TutorialHome()));
              } else if (newValue == 'MyButton') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyButton()));
              } else if (newValue == 'Counter2') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Counter2()));
              }

              // You can add more else if blocks for additional items
            },
            items: const <DropdownMenuItem<String>>[
              // Use DropdownMenuItem
              DropdownMenuItem<String>(
                  value: 'Hello World', child: Text('1.Hello World')),
              DropdownMenuItem<String>(
                  value: 'MyScaffold', child: Text('2.Basic widgets')),
              DropdownMenuItem<String>(
                  value: 'TutorialHome',
                  child: Text('3.Using Material Components')),
              DropdownMenuItem<String>(
                  value: 'MyButton', child: Text('4.Handling gestures')),
              DropdownMenuItem<String>(
                  value: 'Counter2',
                  child: Text('5.Changing widgets in response to input'))
              // Add more items here
            ],
          ),
          const Text('KeyWidgets'),
          DropdownButton2<String>(
            hint: const Text('-select-'),
            // Displayed when no item is selected
            onChanged: (String? newValue) {
              if (newValue == 'MyHomePage') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                              title: 'this is drawer',
                            )));
              } else if (newValue == 'Appbars') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Appbars()));
              } else if (newValue == 'MyhomepageRichTextBox') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyhomepageRichTextBox()));
              }
              // You can add more else if blocks for additional items
            },
            items: const <DropdownMenuItem<String>>[
              // Use DropdownMenuItem
              DropdownMenuItem<String>(
                  value: 'MyHomePage', child: Text('6.DrawerWidgetinFlutter')),
              DropdownMenuItem<String>(
                  value: 'Appbars', child: Text('7.Appbars in built widgets')),
              DropdownMenuItem<String>(
                  value: 'MyhomepageRichTextBox',
                  child: Text('8.Rich text Box')),

              // Add more items here
            ],
          ),
          const Text('Ui Componets'),
          DropdownButton2<String>(
            hint: const Text('-select-'),
            // Displayed when no item is selected
            onChanged: (String? newValue) {
              if (newValue == 'TabBarDemo') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabBarDemo()));
              } else if (newValue == 'MyList') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyList()));
              } else if (newValue == 'RunTileCard') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExpansionTileCardWidget(title: 'expansion tile card')));
              }
              else if (newValue == 'Datepickerwidget') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Datepickerwidget()));
              }
              else if (newValue == 'Dialogbox') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Dialogs()));
              }
              else if (newValue == 'Loader') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Loader()));
              }
              // You can add more else if blocks for additional items
            },
            items: const <DropdownMenuItem<String>>[
              // Use DropdownMenuItem
              DropdownMenuItem<String>(
                  value: 'TabBarDemo', child: Text('9.TabBarDemo')),
              DropdownMenuItem<String>(
                  value: 'MyList', child: Text('10.Horizontal List')),
              DropdownMenuItem<String>(
                  value: 'RunTileCard', child: Text('11.Tile card')),
              DropdownMenuItem<String>(
                  value: 'Datepickerwidget', child: Text('12.Date picker')),
              DropdownMenuItem<String>(
                  value: 'Dialogbox', child: Text('13.Dialog box')),
              DropdownMenuItem<String>(
                  value: 'Loader', child: Text('14. circular progress bar and line bar')),

              // Add more items here
            ],
          ),
        ],
      ),
    );
  }
}
