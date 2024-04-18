import 'package:flutter/material.dart';
import 'package:musisync/core/constants/app_colors.dart';
import 'package:musisync/features/home/presentation/widgets/song_tile_widget.dart';

class ScreenRecentlyPlayed extends StatelessWidget {
  const ScreenRecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: const Text("Recently played"),
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const SongTileWidget();
          },
        ),
      ),
    );
  }
}
