import 'package:flutter/material.dart';

class AnimatedPositionedPage extends StatefulWidget {
  static String routeName = '/AnimatedPositionedPage';
  const AnimatedPositionedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  bool isSelect = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Positioned Page'),
        ),
        body: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: isSelect ? 200 : 100,
                height: isSelect ? 100 : 400,
                top: isSelect ? 50.0 : 150.0,
                //right: isSelect ? 10 : 30,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelect = !isSelect;
                    });
                  },
                  child: Container(
                    color: Colors.red,
                    child: const Center(child: Text('Tap me')),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
