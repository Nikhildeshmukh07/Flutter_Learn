import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('9TabBarDemo'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab( icon: Icon(Icons.music_note)),
                Tab( icon: Icon(Icons.music_video)),
                Tab( icon: Icon(Icons.camera_alt)),
                Tab( icon: Icon(Icons.grade)),
                Tab( icon: Icon(Icons.email)),
              ]),
              title: Text('Tabbar demo'),
            ),
            body: const TabBarView(
              children: [
                Tab( icon: Icon(Icons.music_note)),
                Tab( icon: Icon(Icons.music_video)),
                Tab( icon: Icon(Icons.camera_alt)),
                Tab( icon: Icon(Icons.grade)),
               // Tab( icon: Icon(Icons.email)),
                Text("data")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
