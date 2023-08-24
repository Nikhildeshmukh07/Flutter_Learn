import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_learn/2Appbar.dart';
import 'package:flutter_learn/3TutorialHome.dart';
import '1Helloworld.dart';
import '4.Handling gestures.dart';
import '5Changingwidgetsinresponsetoinput.dart';

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
          Text('USer InterFace'),
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
              }
              else if (newValue == 'MyButton') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  MyButton()));
              }
              else if (newValue == 'Counter2') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Counter2()));
              }
              // You can add more else if blocks for additional items
            },
            items: const <DropdownMenuItem<String>>[
              // Use DropdownMenuItem
              DropdownMenuItem<String>(
                  value: 'Hello World', child: Text('Hello World')),
              DropdownMenuItem<String>(
                  value: 'MyScaffold', child: Text('Basic widgets')),
              DropdownMenuItem<String>(
                  value: 'TutorialHome',
                  child: Text('Using Material Components')),
              DropdownMenuItem<String>(
                  value: 'MyButton',
                  child: Text('Handling gestures')),
              DropdownMenuItem<String>(
                  value: 'Counter2',
                  child: Text('Changing widgets in response to input'))
              // Add more items here
            ],
          ),
          DropdownButton2<String>(
            hint: const Text('Key Widgets'),
            // Displayed when no item is selected
            onChanged: (String? newValue) {
              if (newValue == 'Hello World') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelloWorldScreen()),
                );
              }
              // You can add more else if blocks for additional items
            },
            items: const <DropdownMenuItem<String>>[
              // Use DropdownMenuItem
              DropdownMenuItem<String>(
                  value: 'Hello World', child: Text('Hello World')),

              // Add more items here
            ],
          ),
        ],
      ),
    );
  }
}
