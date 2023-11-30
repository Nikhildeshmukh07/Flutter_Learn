import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsCard extends StatelessWidget {
  const PhysicsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('22. Physics Animation'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: DraggableCard(
        child: SizedBox(
            height: 50,
            width: 50,

            child: Image.asset('assets/images/16.png')),
      ),
    );
  }
}


class DraggableCard extends StatefulWidget {
  final Widget child;

  const DraggableCard({super.key, required this.child});

  @override
  State<DraggableCard> createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  Alignment _dragAlignment = Alignment.center;
  late Animation<Alignment> _animation;

  void _runAnimation(Offset pixelsPerSecond, Size size) {
    _animation = _controller
        .drive(AlignmentTween(begin: _dragAlignment, end: Alignment.center));

    final unitPersecondx = pixelsPerSecond.dx / size.width;
    final unitPersecondy = pixelsPerSecond.dx / size.height;
    final unitPersecond = Offset(unitPersecondx, unitPersecondy);
    final unitVelocity = unitPersecond.distance;

    const spring = SpringDescription(mass: 30, stiffness: 1, damping: 1);

    final simulatiopn = SpringSimulation(spring, 0, 1, -unitVelocity);

    _controller.animateWith(simulatiopn);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addListener(() {
      setState(() {
        _dragAlignment = _animation.value;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanDown: (details) {
        _controller.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          _dragAlignment += Alignment(
            details.delta.dx / (size.width / 2),
            details.delta.dy / (size.height / 2),
          );
        });
      },
      onPanEnd: (details) {
        _runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: Align(
        alignment: _dragAlignment,
        child: Card(
          child: widget.child,
        ),
      ),
    );
  }
}
