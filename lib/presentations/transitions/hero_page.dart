import 'package:animations_demo/presentations/screens.dart/hero_demo_screen.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  static String routeName = '/HeroPage';
  const HeroPage({Key? key}) : super(key: key);

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Decorated Box Transition Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, HeroDemoScreen.routeName);
            },
            leading: Hero(
              tag: 'hero-demo',
              child: Container(
                color: Colors.amber,
                width: 50,
                height: 50,
              ),
            ),
            title: Text('Tap the Container to see Hero Transition'),
          ),
        ));
  }
}
