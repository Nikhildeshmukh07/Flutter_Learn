import 'package:flutter/material.dart';

class Themsflutter extends StatelessWidget {
  const Themsflutter({super.key});

  void _handleBackButtonPress(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    const appName = 'Themes of flutter';
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
            headlineLarge:
                TextStyle(fontSize: 72.2, fontWeight: FontWeight.bold),
            bodyLarge: TextStyle(fontSize: 14.0, fontFamily: 'Hind')),
      ),
      home: ViewPage(
        title: appName,
        onBackButtonPressed: () {
          _handleBackButtonPress(context);
        },
      ),
    );
  }
}

class ViewPage extends StatelessWidget {
  final String title;
  final Function onBackButtonPressed;

  const ViewPage(
      {super.key, required this.title, required this.onBackButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            onBackButtonPressed();
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Hello Devloper',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.red)),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_circle_up),
        ),
      ),
    );
  }
}
