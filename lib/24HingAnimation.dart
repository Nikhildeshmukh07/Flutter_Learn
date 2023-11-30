import 'package:flutter/material.dart';

class HingAnimation extends StatefulWidget {
  const HingAnimation({Key? key}) : super(key: key);

  @override
  State<HingAnimation> createState() => _HingAnimationState();
}

class _HingAnimationState extends State<HingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _rotationAnimation = Tween(end: 0.15, begin: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.bounceInOut),
      ),
    );
    _slideAnimation = Tween(begin: 100.0, end: 600.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );

    _opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
      // Initialize _opacityAnimation
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 1.0, curve: Curves.easeInOut),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // icon: Icon(Icons.menu),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: 'back button',
        ),
        title: const Text('Hinge Animation'),
      ),
      body: AnimatedBuilder(
        animation: _slideAnimation,
        builder: (BuildContext context, Widget? child) => Container(
          width: 200,
          height: 150,
          padding: const EdgeInsets.all(0),
          margin: EdgeInsets.only(
            left: 100,
            top: _slideAnimation.value,
          ),
          child: RotationTransition(
            turns: _rotationAnimation,
            child: Center(
              child: Text(
                'Nikhil',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(
                    300,
                    150,
                    500,
                    _opacityAnimation.value,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[300],
        onPressed: () {
          _controller.reset();
          _controller.forward();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
