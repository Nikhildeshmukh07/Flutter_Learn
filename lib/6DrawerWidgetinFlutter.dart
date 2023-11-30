import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title, super.key});

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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "nikhil",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("data"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromRGBO(255, 156, 255, 137),
                child: Text(
                  'N',
                  style: TextStyle(fontSize: 30.0, color: Colors.lightBlue),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('my profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('course'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text('Saved videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          AppBar(
            title: Text(title),
          ),
          const Center(
            child: Text('A drawer is in the visible side screen',
                style: TextStyle(fontSize: 20.0)),
          ),
        ],
      ),
    );
  }
}
