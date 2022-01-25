import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  static String routeName = '/AnimatedAlignPage';
  const AnimatedAlignPage({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align Page'),
      ),
      body: GestureDetector(
        onTap: () => setState(() {
          isSelected = !isSelected;
        }),
        child: Center(
          child: Container(
            height: 250,
            width: 250,
            color: Colors.orange,
            child: AnimatedAlign(
                //curve chinh hieu ung cua di chuyen
                curve: Curves.decelerate,
                alignment:
                    isSelected ? Alignment.bottomLeft : Alignment.topRight,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                )),
          ),
        ),
      ),
    );
  }
}
