import 'package:animations_demo/navigators/routes.dart';
import 'package:animations_demo/presentations/animation_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationDemo());
}

class AnimationDemo extends StatelessWidget {
  const AnimationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimationPage(),
      routes: routes,
    );
  }
}
