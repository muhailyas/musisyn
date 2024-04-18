import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musisync/core/constants/app_constanta.dart';
import 'package:musisync/features/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConstants.sizeInit(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
      ),
      home: const ScreenSplash(),
    );
  }
}
