import 'package:flutter/material.dart';

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: AlertDialog(
              title: const Text('welcome'),
              content: const Text('Dialog box test learn'),
              actions: [
                FloatingActionButton(child: const Text('cancel'), onPressed: () {}),
                FloatingActionButton(child: const Text('Accept'), onPressed: () {}),

              ],
            ),
          ),
          SimpleDialog(
            title: const Text('simple dialogbox '),
            children:<Widget> [
              SimpleDialogOption(
                onPressed: (){},
                child: const Text('option 1'),
              ),
              SimpleDialogOption(
                onPressed: (){},
                child: const Text('option 2'),
              )
            ],
          )
        ],
      ),
    );
  }
}
