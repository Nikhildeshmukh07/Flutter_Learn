import 'package:flutter/material.dart';

class MyhomepageRichTextBox extends StatefulWidget {
  const MyhomepageRichTextBox({super.key});

  @override
  State<MyhomepageRichTextBox> createState() => _MyhomepageRichTextBoxState();
}

class _MyhomepageRichTextBoxState extends State<MyhomepageRichTextBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich text box'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: RichText(
          overflow: TextOverflow.clip,
          textAlign: TextAlign.end,
          textDirection: TextDirection.rtl,
          softWrap: true,
          maxLines: 1,
          text: TextSpan(
              text: 'hello flutter',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                    text: 'learn',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ]), textScaler: const TextScaler.linear(1),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}
