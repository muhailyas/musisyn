import 'package:flutter/material.dart';
import 'package:musisync/core/constants/app_constanta.dart';
import 'package:musisync/core/theme/theme.dart';
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
      theme: theme,
      home: const ScreenSplash(),
    );
  }
}
