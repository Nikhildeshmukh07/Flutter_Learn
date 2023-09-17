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
      body: Column(
        children: [
          Expanded(
            child: AlertDialog(
              title: Text('welcome'),
              content: Text('Dialog box test learn'),
              actions: [
                FloatingActionButton(child: Text('cancel'), onPressed: () {}),
                FloatingActionButton(child: Text('Accept'), onPressed: () {}),

              ],
            ),
          ),
          SimpleDialog(
            title: Text('simple dialogbox '),
            children:<Widget> [
              SimpleDialogOption(
                onPressed: (){},
                child: Text('option 1'),
              ),
              SimpleDialogOption(
                onPressed: (){},
                child: Text('option 2'),
              )
            ],
          )
        ],
      ),
    );
  }
}
