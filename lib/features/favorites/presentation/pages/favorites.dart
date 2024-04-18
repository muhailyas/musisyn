import 'package:flutter/material.dart';
import 'package:musisync/core/constants/app_colors.dart';
import 'package:musisync/features/home/presentation/widgets/song_tile_widget.dart';

class ScreenFavorites extends StatefulWidget {
  const ScreenFavorites({super.key});

  @override
  State<ScreenFavorites> createState() => _ScreenFavoritesState();
}

class _ScreenFavoritesState extends State<ScreenFavorites> {
  late final ScrollController _controller;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: const Text("Favorites"),
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: Scrollbar(
          thickness: 5,
          controller: _controller,
          radius: const Radius.circular(5),
          child: ListView.builder(
            itemCount: 25,
            controller: _controller,
            itemBuilder: (context, index) {
              return const SongTileWidget();
            },
          ),
        ),
      ),
    );
  }
}
