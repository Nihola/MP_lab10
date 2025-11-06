import 'package:flutter/material.dart';
import 'custom_title.dart';
import 'custom_counter.dart';
import 'animated_container.dart';
import 'gesture_box.dart';
import 'logo_animation.dart';

class MiniProjectHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mini Project")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTitle(text: "Interactive UI", color: Theme.of(context).primaryColor),
              SizedBox(height: 20),
              CustomCounter(),
              SizedBox(height: 20),
              AnimatedBox(),
              SizedBox(height: 20),
              GestureBox(),
              SizedBox(height: 20),
              LogoAnimation(),
            ],
          ),
        ),
      ),
    );
  }
}
