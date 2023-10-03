import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final appTitle = '20.Orientation';

  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyOrientation(
        title: appTitle,
      ),
    );
  }
}

class MyOrientation extends StatelessWidget {
  final String title;

  const MyOrientation({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Updated code
          },
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'A$index',
                  style: Theme.of(context)
                      .textTheme
                      .headline6, // Use headline6 for text style
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
