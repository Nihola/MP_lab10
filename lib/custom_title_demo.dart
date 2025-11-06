import 'package:flutter/material.dart';
import 'custom_title.dart';

class CustomTitleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CustomTitle Demo")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTitle(text: "Hello", color: Colors.purple),
          CustomTitle(text: "World $$$", color: Colors.teal),
        ],
      ),
    );
  }
}
