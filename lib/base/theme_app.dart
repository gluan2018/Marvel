import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel/util/color.dart';
import 'package:marvel/util/no_scroll_behavior.dart';

class ThemeApp extends StatelessWidget {
  final Widget body;

  const ThemeApp({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Marvel',
      scrollBehavior: NoScrollBehavior(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          toolbarHeight: 72,
          elevation: 0,
          titleTextStyle: const TextStyle(fontSize: 24),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: darkColorScheme.background,
            systemNavigationBarColor: darkColorScheme.background,
          ),
        ),
        colorScheme: darkColorScheme,
        scaffoldBackgroundColor: darkColorScheme.background,
      ),
      debugShowCheckedModeBanner: false,
      home: body,
    );
  }
}
