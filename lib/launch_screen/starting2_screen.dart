import 'package:flutter/material.dart';

class Starting2Screen extends StatelessWidget {
  const Starting2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F8FB), // 배경색
      body: Stack(
        children: [
          // 이미지 (왼쪽이 잘리도록 조정)
          Positioned(
            top: screenHeight * 0.3, // 이미지 상단 여백
            left: -screenWidth * 0.02, // 왼쪽으로 이동
            child: Image.asset(
              'assets/images/character.png', // 이미지 경로
              height: screenHeight * 0.45,
              fit: BoxFit.contain,
            ),
          ),

          // "JANSORI" 텍스트
          Positioned(
            top: screenHeight * 0.55, // 텍스트 위치 조정
            left: screenWidth * 0.54,
            child: Text(
              'JANSORI',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xE01C2BC8),
                fontSize: screenWidth * 0.1, // 글자 크기
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // "Get Started" 버튼
          Positioned(
            bottom: screenHeight * 0.12, // 버튼 위치
            left: screenWidth * 0.2,
            right: screenWidth * 0.2,
            child: ElevatedButton(
              onPressed: () {
                // 버튼 클릭 동작
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xE01C2BC8), // 버튼 색상
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24), // 둥근 모서리
                ),
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02, // 버튼 높이
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.05, // 글자 크기
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // 하단 텍스트
          Positioned(
            bottom: screenHeight * 0.08, // 하단 텍스트 위치
            left: screenWidth * 0.2,
            right: screenWidth * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '계정이 있으신가요?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: screenWidth * 0.04, // 글자 크기
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    // "로그인" 클릭 동작
                  },
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: screenWidth * 0.04, // 글자 크기
                      fontWeight: FontWeight.bold,
                    ),
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
