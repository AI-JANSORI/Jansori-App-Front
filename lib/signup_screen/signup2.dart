import 'package:flutter/material.dart';

class Signup2Screen extends StatefulWidget {
  const Signup2Screen({Key? key}) : super(key: key);

  @override
  State<Signup2Screen> createState() => _Signup2ScreenState();
}

class _Signup2ScreenState extends State<Signup2Screen> {
  String? selectedGender; // 선택된 성별 변수

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

              // 키와 체중 입력 필드
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 키 필드
                    buildHeightWeightField(
                      label: '키',
                      unit: 'cm',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),

                    // 체중 필드
                    buildHeightWeightField(
                      label: '체중',
                      unit: 'kg',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.02), // 간격

              // 성별 선택 필드
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Container(
                  width: double.infinity,
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
                        child: Text(
                          '성별',
                          style: TextStyle(
                            color: const Color(0xFF64748B),
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          value: selectedGender,
                          hint: Text(
                            '남 / 여',
                            style: TextStyle(
                              color: const Color(0xFF64748B),
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                          isExpanded: true,
                          underline: SizedBox(), // 밑줄 제거
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedGender = newValue;
                            });
                          },
                          items: <String>['남', '여']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
              'sign up',
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

  Widget buildHeightWeightField({
    required String label,
    required String unit,
    required double screenWidth,
    required double screenHeight,
  }) {
    return Container(
      width: screenWidth * 0.42,
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
            child: Text(
              label,
              style: TextStyle(
                color: const Color(0xFF64748B),
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '',
                hintStyle: TextStyle(
                  color: const Color(0xFF64748B),
                  fontSize: screenWidth * 0.04,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.03),
            child: Text(
              unit,
              style: TextStyle(
                color: const Color(0xFF64748B),
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
