import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musisync/constants.dart';
import 'package:musisync/core/constants/app_colors.dart';

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
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.secondaryColor,
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                color: blueBackgroundColor,
              )
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://imgs.search.brave.com/Qs_5ZofGQN2cHXeH9rflm5q8ZKi4HPF6pm1LXfdhIxo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/d3luay5pbi91bnNh/ZmUvMjQ4eDI0OC9m/aWx0ZXJzOm5vX3Vw/c2NhbGUoKTpzdHJp/cF9leGlmKCk6Zm9y/bWF0KHdlYnApL2h0/dHA6Ly9zMy5hcC1z/b3V0aC0xLmFtYXpv/bmF3cy5jb20vd3lu/ay1tdXNpYy1jbXMv/c3JjaF9vcmNoYXJk/LzIwMjQwMTE1MDI0/NzM1Xzg4MDAwOTcz/Mjg3MC8xNzA1MzA1/OTA4MjEyL3Jlc291/cmNlcy84ODAwMDk3/MzI4NzAuanBn"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monjathi(From " "Qalb" ")",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Song. Prakash Alex, Christakala, Christaj...",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.secondaryColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 2),
                        blurStyle: BlurStyle.outer,
                        color: AppColors.secondaryColor,
                      ),
                    ]),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
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
      itemBuilder: (context, index) => OptionWidget(index: index),
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
}

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              color: blueBackgroundColor,
            )
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            list[index]['icon'] as Widget,
            const SizedBox(width: 15),
            Text(
              list[index]['text'] as String,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
