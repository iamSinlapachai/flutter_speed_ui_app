import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b03_page_ui.dart';

class B01PageUI extends StatelessWidget {
  const B01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 100.0,
        ),
        child: Column(
          children: [
            // ส่วนบน: Photo
            Image.asset(
              'assets/images/imgb1.png', // <-- เปลี่ยนให้ตรงกับไฟล์ภาพของคุณ
              height: 230,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 50,
            ),
            // หัวเรื่อง
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Text(
                    'Discover Your\nDream Job here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 187, 1),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Explore all the existing job roles based \non your interest and study major',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
// login & register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sign in button (Blue)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => B02PageUI(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F41BB), // Blue background
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // White text
                    ),
                  ),
                ),

                const SizedBox(width: 15), // Space between buttons
                // Register button (Gray)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => B03PageUI(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300, // Gray background
                    fixedSize: Size(140, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Black text
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
