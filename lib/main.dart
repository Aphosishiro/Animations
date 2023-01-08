import 'package:flutter/material.dart';
import 'pageone.dart';

void main(List<String> args) {
  runApp(const Animationsclass());
}

class Animationsclass extends StatefulWidget {
  const Animationsclass({Key? key}) : super(key: key);

  @override
  State<Animationsclass> createState() => _AnimationsclassState();
}

class _AnimationsclassState extends State<Animationsclass> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}

