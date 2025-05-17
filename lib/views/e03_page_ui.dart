import 'package:flutter/material.dart';

class E03PageUI extends StatefulWidget {
  const E03PageUI({super.key});

  @override
  State<E03PageUI> createState() => _E03PageUIState();
}

class _E03PageUIState extends State<E03PageUI> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/imge2.png',
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 300,
                  ),
                ],
              ),
              Text(
                "Register",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
              ),
              Text(
                'Create your new account',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _buildTextFormField('Name', 'Input Name'),
                      const SizedBox(height: 10),
                      _buildTextFormField('E-mail', 'Input Email'),
                      const SizedBox(height: 10),
                      _buildTextFormField('Phone', 'Input Phone'),
                      const SizedBox(height: 15),
                      TextFormField(
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
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              _buildAgreementText(),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'OR',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Social Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(50, 50),
                      shape: CircleBorder(),
                      elevation: 2,
                      padding:
                          EdgeInsets.all(10), // ปรับ padding ให้ภาพไม่แนบขอบ
                    ),
                    child: Image.asset(
                      'assets/images/imge3.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(50, 50),
                      shape: CircleBorder(),
                      elevation: 2,
                      padding: EdgeInsets.all(10),
                    ),
                    child: Image.asset(
                      'assets/images/imge4.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(50, 50),
                      shape: CircleBorder(),
                      elevation: 2,
                      padding: EdgeInsets.all(10),
                    ),
                    child: Image.asset(
                      'assets/images/imge5.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account? "),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String label, String hint) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: label,
        hintText: hint,
      ),
    );
  }

  Widget _buildAgreementText() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        right: 40,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'By signing up you agree to our ',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.orange,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('and '),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
