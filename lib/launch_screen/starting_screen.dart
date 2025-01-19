import 'package:flutter/material.dart';
import 'starting2_screen.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  StartingScreenState createState() => StartingScreenState(); // 언더스코어 제거
}

class StartingScreenState extends State<StartingScreen> {
  @override
  void initState() {
    super.initState();
    // 3초 후 starting2_screen으로 이동
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Starting2Screen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F8FB),
      body: Stack(
        children: [
          // "취기를 읽고, 술을 즐기다" 텍스트
          Positioned(
            top: screenHeight * 0.42,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: Text(
              '취기를 읽고, 술을 즐기다',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.045,
                fontFamily: 'Abhaya Libre SemiBold',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // "JANSORI" 텍스트
          Positioned(
            top: screenHeight * 0.46,
            left: screenWidth * 0.2,
            right: screenWidth * 0.2,
            child: Text(
              'JANSORI',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xE01C2BC8),
                fontSize: screenWidth * 0.12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
