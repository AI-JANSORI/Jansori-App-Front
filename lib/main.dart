import 'package:flutter/material.dart';
import 'signup_screen/welcome.dart'; // welcome.dart 파일의 경로를 지정

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 제거
      title: 'Jansori App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(), // 초기 화면을 WelcomeScreen으로 설정
    );
  }
}
