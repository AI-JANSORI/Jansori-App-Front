import 'package:flutter/material.dart';
import 'launch_screen/starting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JANSORI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartingScreen(), // 앱 시작 시 StartingScreen을 표시
    );
  }
}