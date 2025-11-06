import 'package:flutter/material.dart';

class AnimatedListDemo extends StatefulWidget {
  @override
  _AnimatedListDemoState createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo> {
  final _listKey = GlobalKey<AnimatedListState>();
  final List<String> items = [];

  void addItem() {
    final index = items.length;
    items.add("Item $index");
    _listKey.currentState?.insertItem(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedList")),
      body: Column(
        children: [
          ElevatedButton(onPressed: addItem, child: Text("Add Item")),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: items.length,
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: ListTile(title: Text(items[index])),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
