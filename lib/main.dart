import 'package:flutter/material.dart';
import 'package:flutter_july_1/view/homescreen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}