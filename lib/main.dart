import 'package:flutter/material.dart';
import 'package:flutter_proj_home/pages/home_page.dart';
import 'package:flutter_proj_home/pages/page1.dart';
import 'package:flutter_proj_home/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      // home: Page2(),
      home: Page1(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
