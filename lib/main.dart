import 'package:flutter/material.dart';
import 'screens/widget_demo.dart';
import 'screens/custom_title_demo.dart';
import 'screens/custom_counter_demo.dart';
import 'screens/combined_widgets.dart';
import 'screens/animated_container.dart';
import 'screens/logo_animation.dart';
import 'screens/gesture_box.dart';
import 'screens/theme_switcher.dart';
import 'screens/animated_list_demo.dart';
import 'screens/mini_project_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Assignment',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Assignment Navigator'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> pages = [
      {'title': '1. Widgets Demo', 'widget': WidgetDemoPage()},
      {'title': '2. CustomTitle Demo', 'widget': CustomTitleDemo()},
      {'title': '3. CustomCounter Demo', 'widget': CustomCounterDemo()},
      {'title': '4. Combined Widgets', 'widget': CombinedWidgetsPage()},
      {'title': '5. AnimatedContainer', 'widget': AnimatedBox()},
      {'title': '6. Logo Animation', 'widget': LogoAnimation()},
      {'title': '7. GestureDetector', 'widget': GestureBox()},
      {'title': '8. Theme Switcher', 'widget': ThemeSwitcherApp()},
      {'title': '9. AnimatedList', 'widget': AnimatedListDemo()},
      {'title': '10. Mini Project', 'widget': MiniProjectHome()},
    ];

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => pages[index]['widget']),
                );
              },
              child: Text(pages[index]['title']),
            ),
          );
        },
      ),
    );
  }
}
