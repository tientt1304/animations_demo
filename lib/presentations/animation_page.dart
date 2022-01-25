import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);
  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Demo'),
      ),
      body: ListView.builder(
          itemCount: listDemo.length,
          itemBuilder: (_, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, listDemo[index].route);
              },
              title: Text('${index + 1}. ${listDemo[index].name}'),
            );
          }),
    );
  }
}

class Demo {
  final String name;
  final String route;

  Demo({required this.name, required this.route});
}

final listDemo = [
  Demo(name: 'AnimatedAlign', route: '/AnimatedAlignPage'),
  Demo(name: 'AnimatedBuilder', route: '/AnimatedBuilderPage'),
  Demo(name: 'AnimatedContainer', route: '/AnimatedContainerPage'),
  Demo(name: 'AnimatedCrossFade', route: '/AnimatedCrossFadePage'),
  Demo(name: 'AnimatedOpacity', route: '/AnimatedOpacityPage'),
  Demo(name: 'AnimatedPositioned', route: '/AnimatedPositionedPage'),
  Demo(name: 'AnimatedSize', route: '/AnimatedSizePage'),
  Demo(name: 'DecoratedBoxTransition', route: '/DecoratedBoxTransitionPage'),
  Demo(name: 'Hero', route: '/HeroPage'),
  // Demo(name: 'PositionedTransition', route: '/PositionedTransitionPage'),
  // Demo(name: 'RotationTransition', route: '/RotationTransitionPage'),
  // Demo(name: 'ScaleTransition', route: '/ScaleTransitionPage'),
  // Demo(name: 'SizeTransition', route: '/SizeTransitionPage'),
  // Demo(name: 'SlideTransition', route: '/SlideTransitionPage'),
];
