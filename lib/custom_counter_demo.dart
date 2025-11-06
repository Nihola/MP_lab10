import 'package:flutter/material.dart';
import 'custom_counter.dart';

class CustomCounterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CustomCounter Demo")),
      body: Center(child: CustomCounter()),
    );
  }
}
