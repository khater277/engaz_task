import 'package:engaz_task/core/shared_widgets/text.dart';
import 'package:engaz_task/core/utils/app_colors.dart';
import 'package:engaz_task/core/utils/app_fonts.dart';
import 'package:engaz_task/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class LoginHeadText extends StatelessWidget {
  const LoginHeadText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: "Himam ",
              style: getBoldStyle(
                  fontColor: AppColors.blue, fontSize: FontSize.s40),
              children: [
                TextSpan(
                  text: "DRIVE",
                  style: getMediumStyle(
                      fontColor: AppColors.darkBlue, fontSize: FontSize.s38),
                ),
              ],
            ),
          ),
          SmallHeadText(
            text: "SAFE - CHALLENGE - CONFIDENCE",
            color: AppColors.darkBlue,
            letterSpacing: 1.5,
            size: FontSize.s13,
          )
        ],
      ),
    );
  }
}
