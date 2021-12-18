import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class AnimatedBackground extends StatefulWidget {
  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with AnimationMixin {
  late Animation<Color?> color;
  late AnimationController colorController;

  @override
  void initState() {
    super.initState();
    colorController = createController()
      ..mirror(duration: const Duration(milliseconds: 1500));
    color = ColorTween(begin: Colors.red, end: Colors.blue)
        .animate(colorController);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color.value,
      child: Text("data"),
    );
  }
}
