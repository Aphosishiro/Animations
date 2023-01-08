import 'package:animation_class/tweenex.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  double _height = 400;
  double _width = 400;
  // ignore: prefer_final_fields
  Color _color = Colors.green;
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Animations"),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: _height,
            width: _width,
            color: _color,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _height = 300;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: const Text("Animate Height"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _width = 300;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: const Text("Animate Width"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _opacity = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: const Text("Animate Opacity"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Tweenex()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: const Text("Tween page"),
                ),
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 1),
                  child: const Icon(
                    Icons.car_rental,
                    size: 45,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

