import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musisync/constants.dart';
import 'package:musisync/core/constants/app_colors.dart';
import 'package:musisync/features/favorites/presentation/pages/favorites.dart';
import 'package:musisync/features/home/presentation/widgets/option_widget.dart';
import 'package:musisync/features/home/presentation/widgets/song_tile_widget.dart';
import 'package:musisync/features/mostly_played/presentation/pages/mostly_played.dart';
import 'package:musisync/features/recently_played/presentation/pages/recently_played.dart';
import 'package:musisync/features/search/presentation/pages/search.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    _preventScreenRotation();
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildOptions(),
            _buildAllSongTitle(),
            _buildAllSongs(),
          ],
        ),
      ),
    );
  }

  ListView _buildAllSongs() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const SongTileWidget(),
    );
  }

  Padding _buildAllSongTitle() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "All Songs",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );
  }

  GridView _buildOptions() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 5 / 1.6,
      ),
      itemBuilder: (context, index) => InkWell(
          onTap: () {
            navigate(context, index);
          },
          child: OptionWidget(index: index)),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      title: const Text("MusiSync"),
      actions: const [
        CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/20240203/pexels-photo-20240203/free-photo-of-man-standing-with-arm-raised-near-curtain.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
        ),
        SizedBox(width: 10)
      ],
    );
  }

  void _preventScreenRotation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  void navigate(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenFavorites(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenRecentlyPlayed(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenMostlyPlayed(),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const ScreenSearch(),
          ),
        );
        break;
    }
  }
}
