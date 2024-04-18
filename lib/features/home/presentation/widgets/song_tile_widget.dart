import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:musisync/constants.dart';
import 'package:musisync/core/constants/app_colors.dart';
import 'package:musisync/core/constants/app_constanta.dart';

class SongTileWidget extends StatelessWidget {
  const SongTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: AppConstants.h * 0.09,
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
              height: AppConstants.h * 0.075,
              width: AppConstants.h * 0.075,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://imgs.search.brave.com/Qs_5ZofGQN2cHXeH9rflm5q8ZKi4HPF6pm1LXfdhIxo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/d3luay5pbi91bnNh/ZmUvMjQ4eDI0OC9m/aWx0ZXJzOm5vX3Vw/c2NhbGUoKTpzdHJp/cF9leGlmKCk6Zm9y/bWF0KHdlYnApL2h0/dHA6Ly9zMy5hcC1z/b3V0aC0xLmFtYXpv/bmF3cy5jb20vd3lu/ay1tdXNpYy1jbXMv/c3JjaF9vcmNoYXJk/LzIwMjQwMTE1MDI0/NzM1Xzg4MDAwOTcz/Mjg3MC8xNzA1MzA1/OTA4MjEyL3Jlc291/cmNlcy84ODAwMDk3/MzI4NzAuanBn"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: SizedBox(
                width: AppConstants.w * 0.65,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Monjathi(From " "Qalb" ")",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      minFontSize: 14,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    AutoSizeText(
                      "Song. Prakash Alex, Christakala, Christaj...",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      minFontSize: 14,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
            AppConstants.width15,
          ],
        ),
      ),
    );
  }
}
