import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  @override
  _CustomCounterState createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () => setState(() => count--), icon: Icon(Icons.remove)),
        Text('$count', style: TextStyle(fontSize: 20)),
        IconButton(onPressed: () => setState(() => count++
