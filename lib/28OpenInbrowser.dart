import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class OpenInbrowser extends StatelessWidget {
  const OpenInbrowser({super.key});

  _lauchurl() async {
    var url = Uri.parse("https://flutterawesome.com/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('27.Open in Browser'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('open in browser'),
            onPressed: (){
              _lauchurl();
            },
          ),
        ));
  }
}
