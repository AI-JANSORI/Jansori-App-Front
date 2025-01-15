import 'package:flutter/material.dart';
import 'starting_screen.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StartingScreen()),
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xFFF4F8FB), // 배경색 설정
      body: Stack(
        children: [
          // 상단 상태 표시줄
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 64,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 왼쪽 시간
                  Text(
                    '9:41',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      height: 1.31,
                      letterSpacing: -0.32,
                    ),
                  ),
                  // 오른쪽 아이콘들
                  Row(
                    children: [
                      Icon(Icons.network_wifi, size: 20, color: Colors.black),
                      const SizedBox(width: 8),
                      Icon(Icons.battery_full, size: 20, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // 중앙 텍스트
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 첫 번째 줄 텍스트
                const Text(
                  '취기를 읽고, 술을 즐기다',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Abhaya Libre SemiBold',
                    fontWeight: FontWeight.w600,
                    height: 2,
                  ),
                ),
                const SizedBox(height: 10),
                // 두 번째 줄 텍스트
                const Text(
                  'JANSORI',
                  style: TextStyle(
                    color: Color(0xFF1D2BC9), // 파란색
                    fontSize: 48,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.67,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
