import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  static String routeName = '/AnimatedOpacityPage';
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Opacity Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(size: 150),
              ),
              ElevatedButton(
                child: const Text('Fade Logo'),
                onPressed: _changeOpacity,
              ),
            ],
          ),
        ));
  }
}
