import 'package:bubble/home_page.dart';
import 'package:bubble/pallete.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true).copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: Pallete.whiteColor,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent),
          scaffoldBackgroundColor: Pallete.whiteColor
          // colorScheme: const ColorScheme.light(background: Pallete.whiteColor),
          ),
      debugShowCheckedModeBanner: false,
      title: 'Bubble',
      home: const HomePage(),
    );
  }
}
