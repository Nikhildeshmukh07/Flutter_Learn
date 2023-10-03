import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custumfonts extends StatelessWidget {
  TextStyle style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);

  Custumfonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('16.Cutum fonts google fonts used '),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Noraml Text',
              style: style,
            ),
            // Text(
            //   'this font style added into pubspec yaml',
            //   style: TextStyle(
            //       fontFamily: 'Fuggles',
            //       fontSize: 62,
            //       fontWeight: FontWeight.bold),
            // ),
            Text('from google fonts',
                style: GoogleFonts.nabla(textStyle: style)),
          ],
        ),
      ),
    );
  }
}
