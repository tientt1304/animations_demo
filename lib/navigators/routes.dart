import 'package:animations_demo/presentations/animations/animated_align_page.dart';
import 'package:animations_demo/presentations/animations/animated_builder_page.dart';
import 'package:animations_demo/presentations/animations/animated_cross_fade_page.dart';
import 'package:animations_demo/presentations/animations/animated_container_page.dart';
import 'package:animations_demo/presentations/animations/animated_opacity_page.dart';
import 'package:animations_demo/presentations/animations/animated_positioned_page.dart';
import 'package:animations_demo/presentations/animations/animated_size_page.dart';
import 'package:animations_demo/presentations/screens.dart/hero_demo_screen.dart';
import 'package:animations_demo/presentations/transitions/decorated_box_transition_page.dart';
import 'package:animations_demo/presentations/transitions/hero_page.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  AnimatedAlignPage.routeName: (context) => const AnimatedAlignPage(),
  AnimatedBuilderPage.routeName: (context) => const AnimatedBuilderPage(),
  AnimatedContainerPage.routeName: (context) => const AnimatedContainerPage(),
  AnimatedCrossFadePage.routeName: (context) => const AnimatedCrossFadePage(),
  AnimatedOpacityPage.routeName: (context) => const AnimatedOpacityPage(),
  AnimatedPositionedPage.routeName: (context) => const AnimatedPositionedPage(),
  AnimatedSizePage.routeName: (context) => const AnimatedSizePage(),
  DecoratedBoxTransitionPage.routeName: (context) =>
      const DecoratedBoxTransitionPage(),
  HeroPage.routeName: (context) => const HeroPage(),
  HeroDemoScreen.routeName: (context) => const HeroDemoScreen(),
  //AnimatedPositionedPage.routeName: (context) => const AnimatedPositionedPage(),
  //AnimatedPositionedPage.routeName: (context) => const AnimatedPositionedPage(),
  //AnimatedPositionedPage.routeName: (context) => const AnimatedPositionedPage(),
  //AnimatedPositionedPage.routeName: (context) => const AnimatedPositionedPage(),
};
