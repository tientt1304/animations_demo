import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  static String routeName = '/AnimatedContainerPage';
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool isSelect = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container Page'),
        ),
        body: GestureDetector(
          onTap: () => setState(() {
            isSelect = !isSelect;
          }),
          child: Center(
            //use the same with Container but follow condition and have curve!
            child: AnimatedContainer(
              width: isSelect ? 200 : 300,
              height: isSelect ? 300 : 200,
              duration: Duration(seconds: 1),
              color: isSelect ? Colors.red : Colors.blue,
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ));
  }
}
