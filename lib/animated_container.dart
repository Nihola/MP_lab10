import 'package:flutter/material.dart';

class AnimatedBox extends StatefulWidget {
  @override
  _AnimatedBoxState createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox> {
  bool toggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("animation")),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => toggled = !toggled),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: toggled ? 150 : 100,
            height: toggled ? 150 : 100,
            decoration: BoxDecoration(
              color: toggled ? Colors.purple : Colors.amber,
              borderRadius: BorderRadius.circular(toggled ? 30 : 10),
            ),
          ),
        ),
      ),
    );
  }
}
