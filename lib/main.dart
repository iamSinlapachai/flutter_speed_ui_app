import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';

import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e04_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e05_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e06_page_ui.dart';

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
      home: B03PageUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
