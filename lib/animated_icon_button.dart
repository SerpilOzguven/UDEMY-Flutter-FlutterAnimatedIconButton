import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';

class AnimatedIconButtonPage extends StatefulWidget {
  const AnimatedIconButtonPage({super.key});

  @override
  State<AnimatedIconButtonPage> createState() => _AnimatedIconButtonPageState();
}

class _AnimatedIconButtonPageState extends State<AnimatedIconButtonPage> with SingleTickerProviderStateMixin{
  var animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
      reverseDuration: const Duration(milliseconds: 100),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Icon Button'),
      ),
        body: Center(
          child: AnimatedIconButton(
            onPressed: () => print('all icons pressed'),
            icons: [
              AnimatedIconItem(
                icon: const Icon(Icons.map,color:Colors.black,size: 50,),
                onPressed: () => print('add pressed'),
              ),
              const AnimatedIconItem(
                icon: Icon(Icons.pause,color:Colors.red,size:50),
              ),
            ],
          ),
        ),

    );
  }
}
