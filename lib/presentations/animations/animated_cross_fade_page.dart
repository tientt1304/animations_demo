import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  static String routeName = '/AnimatedCrossFadePage';
  const AnimatedCrossFadePage({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool first = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Cross Fade Page'),
        ),
        body: GestureDetector(
          onTap: () => setState(() {
            first = !first;
          }),
          child: Center(
            child: AnimatedCrossFade(
              firstChild: Container(
                width: 200,
                height: 400,
                color: Colors.red,
              ),
              secondChild: Container(
                width: 300,
                height: 100,
                color: Colors.blue,
              ),
              duration: const Duration(seconds: 1),
              crossFadeState:
                  first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          ),
        ));
  }
}
