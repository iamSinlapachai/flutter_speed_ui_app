import 'package:flutter/material.dart';

class A01PageUI extends StatelessWidget {
  const A01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // ส่วนบน: พื้นหลังชมพู + รูป 3D
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
            child: Container(
              color: const Color(0xFFF89AEE), // สีชมพู
              width: double.infinity,
              height: 500,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // รูป 3D Rocket
                  Positioned(
                    top: 100,
                    child: Image.asset(
                      'assets/images/imga1.png', // <-- เปลี่ยนให้ตรงกับไฟล์ภาพของคุณ
                      height: 350,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          // หัวเรื่อง
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text(
                  'Discover Your\nOwn Dream House',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. '
                  'Eget viverra urna, vestibulum egestas faucibus egestas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // ปุ่ม Sign in และ Register
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Sign in Button
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Handle sign in
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFA9F9), // สีชมพู
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Register Button
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Handle register
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF5F5F5), // เทาอ่อน
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
