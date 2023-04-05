import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/debug.dart';

/*
Row
Column
Expanded
SingleChildScrollView
- Vertical
- Horizontal
Wrap
Stack + Positioned
Stack + Align
MediaQuery
LayoutBuilder
OrientationBuilder
*/
void main() async {
  await initialize();

  // first_time = false atau null,

  Get.mainTheme.value = getDefaultTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const DemoView(),
          builder: (context, child) => debugView(
            context: context,
            child: child,
            visible: true,
          ),
        );
      },
    );
  }
}
