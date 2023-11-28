import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Photo extends StatelessWidget {
  const Photo(
      {super.key,
      required this.photo,
      this.color = Colors.transparent,
      required this.onTap});

  final String photo;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).primaryColor.withOpacity(0.25),
        child: InkWell(
          onTap: onTap,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints size) {
            return Image.asset(
              photo,
            );
          }),
        ));
  }
}

class PhtoHeroAnimation extends StatelessWidget {
  const PhtoHeroAnimation({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Center(
        child: SizedBox(
          width: 500,
          height: 400,
          child: child,
        ),
      ),
    );
  }
}

class RadialDemoHero extends StatelessWidget {
  static const double kMinRadius = 32.0;
  static const double kMaxRadius = 128.0;
  static const opacituCurve =
      const Interval(0.0, 0.75, curve: Curves.fastOutSlowIn);

  static Tween<Rect?> _createTween(Rect? begin, Rect? end) {
    return MaterialRectCenterArcTween(begin: begin, end: end);
  }

  const RadialDemoHero({super.key});

  static Widget _buildPage(
      BuildContext context, String imageName, String description) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              createRectTween: _createTween,
              tag: imageName,
              child: Center(
                child: Photo(
                  photo: imageName,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            Text(
              description,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildHero(
      BuildContext context, String imageName, String description) {
    return Container(
      width: kMinRadius * 3.0,
      height: kMinRadius * 3.0,
      child: Hero(
        createRectTween: _createTween,
        tag: imageName,
        child: PhtoHeroAnimation(
          child: Photo(
            photo: imageName,
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder<void>(
                  pageBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return AnimatedBuilder(
                      animation: animation,
                      builder: (BuildContext context, Widget? child) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Opacity(
                            opacity: opacituCurve.transform(animation.value),
                            child: _buildPage(context, imageName, description),
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 4.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Widget'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Updated code
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: const EdgeInsets.all(33.0),
          alignment: FractionalOffset.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHero(context, 'assets/images/2.jpg', 'SpiderMan'),
              _buildHero(context, 'assets/images/4.jpg', 'Captain America'),
              _buildHero(context, 'assets/images/5.jpg', 'Wednesday Addams'),
              _buildHero(context, 'assets/images/6.jpg', 'Iron Man'),
              _buildHero(context, 'assets/images/7.jpg', 'Marvel vs DC'),
              _buildHero(context, 'assets/images/8.jpg', 'Demon Slayer'),
              _buildHero(context, 'assets/images/9.jpg', 'One Punch Man'),
              _buildHero(context, 'assets/images/10.jpg', 'Attack On TItan'),
              _buildHero(context, 'assets/images/13.jpg', 'Flutter'),
              _buildHero(context, 'assets/images/15.jpg', 'Java'),
              _buildHero(context, 'assets/images/16.png', 'Ball'),
            ],
          ),
        ),
      ),
    );
  }
}
