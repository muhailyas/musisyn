import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musisync/core/constants/app_colors.dart';

final theme = ThemeData(
  scaffoldBackgroundColor: AppColors.primaryColor,
  appBarTheme: const AppBarTheme(backgroundColor: AppColors.primaryColor),
  fontFamily: GoogleFonts.aBeeZee().fontFamily,
);
