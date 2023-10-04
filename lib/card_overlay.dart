import 'package:flutter/material.dart';

class CardOverlay extends StatefulWidget {
  const CardOverlay({super.key});

  @override
  State<CardOverlay> createState() => _CardOverlayState();
}

class _CardOverlayState extends State<CardOverlay> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
    animation = CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return MouseRegion(
        onEnter: (_) {
          animationController.forward();
        },
        onExit: (_) {
          animationController.reverse();
        },
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) => Transform.translate(
            offset: Offset(0, constraints.maxHeight * (1 - animation.value)),
            child: Transform.scale(
              scale: 1,
              child: child,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.black.withOpacity(0.75)),
            child: const Center(
              child: Text('Details'),
            ),
          ),
        ),
      );
    });
  }
}
