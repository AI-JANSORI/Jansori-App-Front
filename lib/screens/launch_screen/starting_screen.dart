import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    // Figma 기준 데이터
    const double figmaWidth = 375;
    const double figmaHeight = 812;

    // 비율 계산
    double widthRatio = width / figmaWidth;
    double heightRatio = height / figmaHeight;

    // 이미지 크기 및 위치 (Figma 기준 비율 적용)
    double imageTop = 247 * heightRatio;
    double imageLeft = 137 * widthRatio;
    double imageWidth = 355 * widthRatio;
    double imageHeight = 355 * heightRatio;

    return Scaffold(
      body: Stack(
        children: [
          // 왼쪽 그림
          Positioned(
            top: imageTop,
            left: imageLeft,
            child: Image.asset(
              'assets/images/char.png',
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.contain,
            ),
          ),
          // 텍스트와 버튼
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 제목 텍스트
                  Text(
                    'JANSORI',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(29, 43, 201, 0.88),
                    ),
                  ),
                  SizedBox(height: height * 0.05), // 간격 조정
                  // Get Started 버튼
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(29, 43, 201, 0.88),
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1,
                        vertical: height * 0.02,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      // 버튼 클릭 액션
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03), // 간격 조정
                  // 로그인 텍스트
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5D6A85),
                      ),
                      children: [
                        TextSpan(text: '계정이 있으신가요? '),
                        TextSpan(
                          text: '로그인',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
