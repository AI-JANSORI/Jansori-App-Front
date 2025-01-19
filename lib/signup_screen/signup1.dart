import 'package:flutter/material.dart';

class Signup1Screen extends StatelessWidget {
  const Signup1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: screenHeight * 0.1), // Next 버튼 공간 확보
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.072), // 상단 여백

              // Top Navigation Bar
              Stack(
                children: [
                  Positioned(
                    left: screenWidth * 0.03,
                    child: GestureDetector(
                      onTap: () {
                        // 뒤로가기 기능
                      },
                      child: Image.asset(
                        'assets/icons/back_icon.png',
                        width: screenWidth * 0.06,
                        height: screenHeight * 0.03,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '회원가입',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.05), // 간격
              buildInputField('이름', Icons.person, screenWidth, screenHeight),
              SizedBox(height: screenHeight * 0.02),
              buildInputField('이메일', Icons.email, screenWidth, screenHeight),
              SizedBox(height: screenHeight * 0.02),
              buildInputField('비밀번호', Icons.lock, screenWidth, screenHeight, obscureText: true),
              SizedBox(height: screenHeight * 0.02),
              buildInputField('비밀번호 확인', Icons.lock_outline, screenWidth, screenHeight, obscureText: true),
              SizedBox(height: screenHeight * 0.02),
              buildNicknameField(screenWidth, screenHeight),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.05),
        child: SizedBox(
          width: double.infinity,
          height: screenHeight * 0.07,
          child: ElevatedButton(
            onPressed: () {
              // Next 버튼 기능
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1D2BC9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              'next',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String label, IconData icon, double screenWidth, double screenHeight, {bool obscureText = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Container(
        height: screenHeight * 0.07,
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4FB),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xFFE2E8F0),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
              child: Icon(
                icon,
                color: const Color(0xFF7F7979),
                size: screenWidth * 0.06,
              ),
            ),
            Expanded(
              child: TextField(
                obscureText: obscureText,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: label,
                  hintStyle: TextStyle(
                    color: const Color(0xFF64748B),
                    fontSize: screenWidth * 0.04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNicknameField(double screenWidth, double screenHeight) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: screenHeight * 0.07,
              decoration: BoxDecoration(
                color: const Color(0xFFF4F4FB),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFFE2E8F0),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                    child: Icon(
                      Icons.person,
                      color: const Color(0xFF7F7979),
                      size: screenWidth * 0.06,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '닉네임',
                        hintStyle: TextStyle(
                          color: const Color(0xFF64748B),
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: screenWidth * 0.03),
          Container(
            height: screenHeight * 0.07,
            width: screenWidth * 0.25,
            decoration: BoxDecoration(
              color: const Color(0x660056D2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Check',
                style: TextStyle(
                  color: const Color(0xFFCBD5E1),
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
