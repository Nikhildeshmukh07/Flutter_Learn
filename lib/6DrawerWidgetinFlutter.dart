import 'package:flutter/material.dart';
class MyHomePage  extends StatelessWidget {
  const MyHomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('6.DrawerWidgetinFlutter'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          AppBar(
            title: const Text('Second AppBar'),
          )
        ],
      ),
    );
  }
}
