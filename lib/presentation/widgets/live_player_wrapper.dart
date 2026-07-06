import 'dart:math';
import 'package:flutter/material.dart';

class LivePlayerWrapper extends StatefulWidget {
  final Widget child;
  final int seed;

  const LivePlayerWrapper({
    super.key,
    required this.child,
    required this.seed,
  });

  @override
  State<LivePlayerWrapper> createState() => _LivePlayerWrapperState();
}

class _LivePlayerWrapperState extends State<LivePlayerWrapper> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    final random = Random(widget.seed);
    
    final durationMs = 2000 + random.nextInt(3000); 

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: durationMs),
    )..repeat(reverse: true);

    final angle = random.nextDouble() * 2 * pi;
    final radius = 6.0 + random.nextDouble() * 10.0;

    final dx = radius * cos(angle);
    final dy = radius * sin(angle);

    _animation = Tween<Offset>(
      begin: Offset(-dx, -dy),
      end: Offset(dx, dy),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutSine,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: _animation.value,
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
