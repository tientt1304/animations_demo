import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderPage extends StatefulWidget {
  static String routeName = '/AnimatedBuilderPage';
  const AnimatedBuilderPage({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage>
    with TickerProviderStateMixin {
  //co the thay the controller =  Tween hoac animation khac
  late final AnimationController controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 5))
        ..repeat();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Builder Page'),
      ),
      body: AnimatedBuilder(
        animation: controller,
        child: const Center(
          child: FlutterLogo(
            size: 100,
          ),
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle: controller.value * 2.0 * pi,
            child: child,
          );
        },
      ),
    );
  }
}
