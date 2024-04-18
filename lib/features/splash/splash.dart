import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:musisync/constants.dart';
import 'package:musisync/core/constants/app_colors.dart';
import 'package:musisync/features/home/presentation/pages/home.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenHome(),
          ));
    });
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLottieAnimation(context),
          _buildText(),
        ],
      ),
    );
  }

  Widget _buildLottieAnimation(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
          Lottie.asset(splashImage, height: h / 3, width: w, fit: BoxFit.cover),
    );
  }

  Widget _buildText() {
    return const Text(
      "Musisync",
      textAlign: TextAlign.center,
      style: TextStyle(color: AppColors.whiteColor, fontSize: 25),
    );
  }
}
