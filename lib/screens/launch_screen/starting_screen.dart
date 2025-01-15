import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 텍스트를 위치시키기 위해 Positioned 사용
          Positioned(
            left: 170,
            right: 12,
            top: 449, // 텍스트 위치 설정
            bottom: 385,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 217,
                height: 40,
                color: Colors.white,
                child: Text(
                  'JANSORI',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    height: 32 / 48,
                    color: Color.fromRGBO(29, 43, 201, 0.88),
                  ),
                ),
              ),
            ),
          ),

          // 버튼을 위치시키기 위해 Positioned 사용
          Positioned(
            left: 126, // 버튼의 왼쪽 위치
            right: 126, // 버튼의 오른쪽 위치
            top: 730, // 버튼의 상단 위치
            bottom: 90,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 145, // 버튼 너비
                height: 53, // 버튼 높이
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(29, 43, 201, 0.88), // 배경 색상
                  borderRadius: BorderRadius.circular(20), // 둥근 모서리
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 버튼 내부 텍스트
                    Text(
                      'Get Started', // 텍스트 내용
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white, // 텍스트 색상
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // 로그인 텍스트 추가
          Positioned(
            left: 92, // 위치는 여기에 맞게 설정
            right: 96, // 위치는 여기에 맞게 설정
            top: 800, // 위치는 여기에 맞게 설정
            bottom: 50, // 위치는 여기에 맞게 설정
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 214, // 너비 설정
                height: 19, // 높이 설정
                child: RichText(
                  textAlign: TextAlign.center, // 텍스트 가운데 정렬
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1, // line-height normal 설정
                      letterSpacing: -0.14,
                      color: Color(0xFF5D6A85), // 기본 텍스트 색상
                    ),
                    children: [
                      TextSpan(text: '계정이 있으신가요? '),
                      TextSpan(
                        text: '로그인', // '로그인'만 빨간색으로
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // 이미지 삽입
          Positioned(
            left: 0, // 원하는 위치로 수정
            right: 225,
            top: 247, // 원하는 위치로 수정
            bottom: 272,
            child: Container(
              width: 355,
              height: 355,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/char.png"), // 로컬 이미지 사용
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
