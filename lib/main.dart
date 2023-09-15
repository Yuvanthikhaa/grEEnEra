import 'package:flutter/material.dart';
import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logo Animation',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnimatedLogoPage(), // Set the AnimatedLogoPage as the initial route
    );
  }
}
