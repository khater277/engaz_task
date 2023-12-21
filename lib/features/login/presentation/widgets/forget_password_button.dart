import 'package:engaz_task/core/shared_widgets/text.dart';
import 'package:engaz_task/core/utils/app_colors.dart';
import 'package:engaz_task/core/utils/app_fonts.dart';
import 'package:engaz_task/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.w4),
        child: LargeHeadText(
          text: "Forget your password?",
          size: FontSize.s11,
          color: AppColors.darkBlue,
        ),
      ),
    );
  }
}
