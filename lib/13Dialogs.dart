import 'package:flutter/material.dart';

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: AlertDialog(
        title: Text('welcome'),
        content: Text('Dialog box test learn'),
        actions: [
          FloatingActionButton(child: Text('cancel'), onPressed: () {}),
          FloatingActionButton(child: Text('Accept'), onPressed: () {})
        ],
      ),
    );
  }
}
