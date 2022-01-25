import 'package:flutter/material.dart';

class DecoratedBoxTransitionPage extends StatefulWidget {
  static String routeName = '/DecoratedBoxTransitionPage';
  const DecoratedBoxTransitionPage({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxTransitionPage> createState() =>
      _DecoratedBoxTransitionPageState();
}

class _DecoratedBoxTransitionPageState extends State<DecoratedBoxTransitionPage>
    with TickerProviderStateMixin {
  //tween animation & AnimationController using with TickerPRoviderStateMixin!
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.orange,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        )
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
    ),
  );

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Decorated Box Transition Page'),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: DecoratedBoxTransition(
              decoration: decorationTween.animate(_controller),
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(10),
                child: const FlutterLogo(),
              ),
            ),
          ),
        ));
  }
}
