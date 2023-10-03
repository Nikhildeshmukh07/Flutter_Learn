import 'package:flutter/material.dart';
import 'dart:math' as math;

class Photo extends StatelessWidget {
  final String photo;
  final Color color;
  final VoidCallback onTap;

  const Photo(
      {Key? key,
      required this.photo,
      this.color = Colors.transparent,
      required this.onTap})
      : super(key: key);

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
              fit: BoxFit.contain,
            );
          },
        ),
      ),
    );
  }
}

class RadialExpansion extends StatelessWidget {
  final double maxRadius;
  final clipRectSize;
  final Widget child;

  const RadialExpansion(
      {Key? key, required this.maxRadius, required this.child})
      : clipRectSize = 2.0 * (maxRadius / math.sqrt2);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Center(
        child: SizedBox(
          width: clipRectSize,
          height: clipRectSize,
          child: ClipRect(
            child: child,
          ),
        ),
      ),
    );
  }
}

class RadialExpansionDemo extends StatelessWidget {
  static const double kMinRadius = 32.0;
  static const double kMaxRadius = 128.0;
  static const opacityCurve = const Interval(0.0,  0.75, curve: Curves.fastOutSlowIn);

  static Tween<Rect?> _createRectTween(Rect? begin,Rect? end){
    return MaterialRectCenterArcTween(begin: begin,end: end);
  }


  const RadialExpansionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

