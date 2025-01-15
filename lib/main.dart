import 'package:flutter/material.dart';
import 'screens/launch_screen/splash_screen.dart';
import 'screens/launch_screen/starting_screen.dart';

void main() => runApp(MyApp()); //runApp 호출 -> 위젯 요소 반드시 필요

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'JANSORI', initialRoute: '/launch', routes: {
      '/launch': (context) => const LaunchScreen(),
    });
  }
}
