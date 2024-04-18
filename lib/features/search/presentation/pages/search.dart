import 'package:flutter/material.dart';
import 'package:musisync/core/constants/app_colors.dart';
import 'package:musisync/features/home/presentation/widgets/song_tile_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        title: const Text("Search"),
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
