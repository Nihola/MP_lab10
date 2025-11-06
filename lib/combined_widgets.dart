import 'package:flutter/material.dart';
import 'custom_title.dart';
import 'custom_counter.dart';

class CombinedWidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Combined Widgets")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTitle(text: "Counter", color: Colors.indigo),
            SizedBox(height: 20),
            CustomCounter(),
          ],
        ),
      ),
    );
  }
}
