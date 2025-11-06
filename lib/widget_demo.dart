import 'package:flutter/material.dart';
import 'colored_box.dart';

class WidgetDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets")),
      body: Padding(
        padding: const EdgeInsets.all(19),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColoredBoxWidget(Colors.blue),
                ColoredBoxWidget(Colors.green),
              ],
            ),
            SizedBox(height: 50),
            Wrap(
              spacing: 40,
              children: [
                ColoredBoxWidget(Colors.blue),
                ColoredBoxWidget(Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
