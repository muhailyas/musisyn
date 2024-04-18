import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:musisync/constants.dart';
import 'package:musisync/core/constants/app_colors.dart';
import 'package:musisync/core/constants/app_constanta.dart';

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
            AppConstants.width15,
            list[index]['icon'] as Widget,
            AppConstants.width15,
            SizedBox(
              width: AppConstants.w * 0.3,
              child: AutoSizeText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                maxFontSize: 12,
                minFontSize: 12,
                list[index]['text'] as String,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
