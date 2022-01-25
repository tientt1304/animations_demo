import 'package:flutter/material.dart';

class HeroDemoScreen extends StatelessWidget {
  static String routeName = '/HeroDemoScreen';
  const HeroDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Demo'),
      ),
      body: Center(
        child: Hero(
          tag: 'hero-demo',
          child: Container(
            color: Colors.amber,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
