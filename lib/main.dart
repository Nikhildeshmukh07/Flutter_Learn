import 'package:flutter/material.dart';

import 'Dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Navigation Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DashboardScreen());
  }
}
