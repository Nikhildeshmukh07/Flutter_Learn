import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
         // icon: Icon(Icons.menu),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: 'back button',
        ),
        title: const Text('Example Title'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'search button',
          )
        ],
      ),
      body: const Center(
        child: Text('HelloWorld')
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'add',
        child: Icon(Icons.add),
      ),
    );
  }
}
