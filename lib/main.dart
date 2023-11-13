import 'package:animated_icon_button_test/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:animated_icon_button/animated_icon_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Icon Button',
      theme: ThemeData(
        primaryColor:Colors.blue,
      ),
      home: const AnimatedIconButtonPage(),
    );
  }
}
