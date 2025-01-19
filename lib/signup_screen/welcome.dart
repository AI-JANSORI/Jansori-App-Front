import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 하단 이미지 (화면 가장 아래에 여백 없이 배치)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/okay.png', // 이미지 경로
              width: screenWidth,
              height: screenHeight * 0.3, // 이미지 높이 설정
              fit: BoxFit.cover,
            ),
          ),

          // 텍스트와 버튼 (화면 정중앙에 배치)
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // "JANSORI" 텍스트
                Text(
                  'JANSORI',
                  style: TextStyle(
                    color: const Color(0xE01C2BC8),
                    fontSize: screenWidth * 0.12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 10), // 텍스트 간격

                // "회원가입 완료" 텍스트
                Text(
                  '회원가입 완료 💙',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.05,
                    fontFamily: 'Abhaya Libre SemiBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 30), // 텍스트와 버튼 간격

                // "목표 설정하기" 버튼
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: SizedBox(
                    width: double.infinity,
                    height: screenHeight * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        // 버튼 클릭 이벤트
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1D2BC9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        '목표 설정하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
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
