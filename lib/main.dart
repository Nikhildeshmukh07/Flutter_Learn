import 'package:flutter/material.dart';
import 'package:flutter_learn/Appbar.dart';
import 'HomeScreen.dart';
import 'Helloworld.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isHelloWorldActive) HelloWorld(),
          if (isHomeScreenActive) HomeScreen(),
          if(isMyScaffoldActive) MyScaffold(),

        ],
      ),
    );
  }
}


bool isHelloWorldActive = false;
bool isHomeScreenActive = false;
bool isMyScaffoldActive = true;