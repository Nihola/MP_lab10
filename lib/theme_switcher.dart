import 'package:flutter/material.dart';

class ThemeSwitcherApp extends StatefulWidget {
  @override
  _ThemeSwitcherAppState createState() => _ThemeSwitcherAppState();
}

class _ThemeSwitcherAppState extends State<ThemeSwitcherApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: Text("Theme Switcher")),
        body: Center(
          child: Switch(
            value: isDark,
            onChanged: (val) => setState(() => isDark = val),
          ),
        ),
      ),
    );
  }
}
