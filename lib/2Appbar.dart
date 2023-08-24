import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;

  const MyAppBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const IconButton(onPressed: null, icon: Icon(Icons.menu)),
          Expanded(child: title),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search)
            // tooltip: 'search',
          )

        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScaffold'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Column(
        children: [
          MyAppBar(title: Text('Example title')),
        ],
      ),
    );
  }
}
