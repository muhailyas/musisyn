import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:musisync/core/constants/app_colors.dart';
import 'package:musisync/core/constants/app_constanta.dart';
import 'package:musisync/features/home/presentation/pages/home.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBackgroundImage(),
          _buildSpotifyButton(context),
        ],
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      height: AppConstants.h * 0.7,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://images.unsplash.com/photo-1530950774950-6376cbdcf385?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
        ),
      ),
    );
  }

  Widget _buildSpotifyButton(BuildContext context) {
    return Container(
      height: AppConstants.h * 0.06,
      width: AppConstants.w * 0.7,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: AppConstants.h * 0.044,
            width: AppConstants.w * 0.08,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://imgs.search.brave.com/JoF1skJ0uKdwAeI_-SlkjNjpEXlouIAFhoiPw6Lv5HQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4t/aWNvbnMtcG5nLmZy/ZWVwaWsuY29tLzI1/Ni8zNjY5LzM2Njk5/ODYucG5nP3NlbXQ9/YWlzX2h5YnJpZA'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScreenHome()));
            },
            child: SizedBox(
              width: AppConstants.w * 0.48,
              child: const AutoSizeText(
                "Continue with Spotify ",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                minFontSize: 18,
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
