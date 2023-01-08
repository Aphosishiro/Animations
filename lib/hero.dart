import 'package:flutter/material.dart';

class Heropage extends StatefulWidget {
  const Heropage({Key? key}) : super(key: key);

  @override
  State<Heropage> createState() => _HeropageState();
}

class _HeropageState extends State<Heropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'ONE',
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/canien cats.png'))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
