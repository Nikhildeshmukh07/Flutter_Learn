import 'package:flutter/material.dart';

class Appbars extends StatelessWidget {
  const Appbars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbars widgets'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          AppBar(
            title: const Text('simple App bar '),
          ),
          const SizedBox(
            height: 10,
          ),
          AppBar(
            title: const Text('Rounded Corner app bar'),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 60.2,
            toolbarOpacity: 0.8,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            )),
            elevation: 0.00,
            backgroundColor: Colors.greenAccent[400],
          ),
          const SizedBox(
            height: 10,
          ),
          AppBar(
            title: const Text('Appbar Widget'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment),
                tooltip: 'Comment Icon',
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'settings',
                onPressed: () {},
              )
            ],
            backgroundColor: Colors.blueAccent,
            elevation: 50.0,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'menu icon',
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
