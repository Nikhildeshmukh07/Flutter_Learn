import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('4.Handling gestures'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GestureDetector(
        onTap: (){
          print('buttonis clicked');
        },
        child: Center(
          child: Container(
            height: 40,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
                  color: Colors.lightBlueAccent[400],
            ),
            child: const Center(child: Text('prees and see on console')),
      ),
        ),
      ),
    );
  }
}
