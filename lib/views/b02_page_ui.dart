import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class B02PageUI extends StatefulWidget {
  const B02PageUI({super.key});

  @override
  State<B02PageUI> createState() => _B02PageUIState();
}

class _B02PageUIState extends State<B02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Login here",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF1F41BB),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome back you\'ve',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'been missed!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'E-mail',
                  hintText: 'Input Email',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Password',
                  hintText: 'Input Password',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 15,
                bottom: 20,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Forget your password?",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1F41BB),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                bottom: 50,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F41BB),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Text(
              'Create new account',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 15),
              child: Text(
                'Or continue with',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1F41BB),
                ),
              ),
            ),
            // Social Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    fixedSize: Size(60, 50), // ขนาดปุ่ม
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // ปรับขอบมนตามต้องการ
                    ),
                    elevation: 2,
                    padding: EdgeInsets.all(10),
                  ),
                  child: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    fixedSize: Size(60, 50), // ขนาดปุ่ม
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // ปรับขอบมนตามต้องการ
                    ),
                    elevation: 2,
                    padding: EdgeInsets.all(10),
                  ),
                  child: Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    fixedSize: Size(60, 50), // ขนาดปุ่ม
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // ปรับขอบมนตามต้องการ
                    ),
                    elevation: 2,
                    padding: EdgeInsets.all(10),
                  ),
                  child: Icon(
                    FontAwesomeIcons.apple,
                    color: Colors.black,
                    size: 32,
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
