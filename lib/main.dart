import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterSpeedUIProject(),
  );
}

// =========

class FlutterSpeedUIProject extends StatefulWidget {
  const FlutterSpeedUIProject({super.key});

  @override
  State<FlutterSpeedUIProject> createState() => _FlutterSpeedUIProjectState();
}

class _FlutterSpeedUIProjectState extends State<FlutterSpeedUIProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
