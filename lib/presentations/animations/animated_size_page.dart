import 'package:flutter/material.dart';

class AnimatedSizePage extends StatefulWidget {
  static String routeName = '/AnimatedSizePage';
  const AnimatedSizePage({Key? key}) : super(key: key);

  @override
  State<AnimatedSizePage> createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedSizePage> {
  bool isLarge = false;
  double size = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Size Page'),
        ),
        body: GestureDetector(
          onTap: () => setState(() {
            size = isLarge ? 200 : 100;
            isLarge = !isLarge;
          }),
          child: Center(
            child: Container(
              color: Colors.red,
              child: AnimatedSize(
                curve: Curves.easeIn,
                duration: Duration(seconds: 1),
                child: FlutterLogo(
                  size: size,
                ),
              ),
            ),
          ),
        ));
  }
}
