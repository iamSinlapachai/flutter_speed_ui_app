import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d03_page_ui.dart';

class D01PageUI extends StatelessWidget {
  const D01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image (เต็มหน้าจอ)
          Positioned.fill(
            child: Image.asset(
              'assets/images/imgd1.png',
              fit: BoxFit.cover,
            ),
          ),

          // Overlay with content
          Positioned.fill(
            child: Container(
              color: Colors.white
                  .withOpacity(0), // ปรับความทึบแสงให้เห็นพื้นหลังบางส่วน
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Logo
                  Image.asset(
                    'assets/images/imgd2.png',
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  // Login Button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: const Size.fromHeight(
                          60,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => D02PageUI(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Register Button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black),
                        minimumSize: const Size.fromHeight(
                          60,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => D03PageUI(),
                          ),
                        );
                      },
                      child: const Text("Register",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // Continue as Guest
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Continue as a guest",
                      style: TextStyle(
                        color: Colors.cyan,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
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
