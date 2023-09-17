import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RunTileCard extends StatelessWidget {
  const RunTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: const ExpansionTileCardWidget(title: 'expansion tile card'),
    );
  }
}

class ExpansionTileCardWidget extends StatefulWidget {
  final String title;

  const ExpansionTileCardWidget({required this.title, super.key});

  @override
  State<ExpansionTileCardWidget> createState() => _ExpansionTileCardState();
}

class _ExpansionTileCardState extends State<ExpansionTileCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTile(
              leading: const CircleAvatar(child: Text('A')),
              title: const Text('tap to expand'),
              subtitle: const Text('is has picture'),
              children: <Widget>[
                const Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Image.asset('assets/images/5.jpg'),
                  ),
                )
                // Additional content when the tile is expanded
              ],
            ),
          ),
        ],
      ),
    );
  }
}
