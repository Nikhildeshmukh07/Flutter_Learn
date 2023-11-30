import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class LottiePage extends StatefulWidget {
  const LottiePage({super.key});

  @override
  State<LottiePage> createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('25.Lottie Animation'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets1.lottiefiles.com/private_files/lf30_QLsD8M.json',
              height: 200.0,
              repeat: true,
              reverse: true,
              animate: true,


            ),
            SizedBox(
              height: 150,
              width: 200,
              child: Lottie.network(
                'https://assets1.lottiefiles.com/private_files/lf30_yQtj4O.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
