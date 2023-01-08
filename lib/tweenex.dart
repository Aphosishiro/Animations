import 'package:animation_class/hero.dart';
import 'package:flutter/material.dart';

class Tweenex extends StatefulWidget {
  const Tweenex({super.key});

  @override
  State<Tweenex> createState() => _TweenexState();
}

class _TweenexState extends State<Tweenex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder(
            duration: const Duration(seconds: 2),
            tween: Tween<double>(begin: 0, end: 1),
            builder: (BuildContext context, double value, Widget? child) {
              return Opacity(
                opacity: value,
                child: Padding(
                  padding: EdgeInsets.only(bottom: value * 50),
                  child: child,
                ),
              );
            },
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Heropage())));
                },
                child: Hero(
                  tag: 'ONE',
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/canien cats.png'))
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
