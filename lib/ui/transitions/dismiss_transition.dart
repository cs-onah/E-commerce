import 'package:flutter/material.dart';

class DismissTransition extends StatefulWidget {
  final Widget child;
  final Duration? duration;
  final AnimationController? controller;
  const DismissTransition({Key? key, required this.child, this.duration, this.controller})
      : super(key: key);

  @override
  State<DismissTransition> createState() => _DismissTransitionState();
}

class _DismissTransitionState extends State<DismissTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  final slideTween = Tween<Offset>(begin: Offset.zero, end: Offset(0, -0.3));
  final opacityTween = Tween<double>(begin: 1, end: 0);

  @override
  void initState() {
    controller = widget.controller ?? AnimationController(
      vsync: this,
      duration: widget.duration ?? Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      child: widget.child,
      builder: (_, child) {
        return Opacity(
          opacity: opacityTween.animate(controller).value,
          child: SlideTransition(
            position: slideTween.animate(controller),
            child: child!,
          ),
        );
      },
    );
  }
}
