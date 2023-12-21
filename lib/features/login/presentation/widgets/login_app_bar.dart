import 'package:engaz_task/core/shared_widgets/text.dart';
import 'package:engaz_task/core/utils/app_colors.dart';
import 'package:engaz_task/core/utils/app_fonts.dart';
import 'package:engaz_task/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppHeight.h4, horizontal: AppWidth.w2),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: BorderRadius.circular(AppSize.s5),
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.white,
            size: AppSize.s15,
          ),
        ),
      ),
      title: LargeHeadText(
        text: "Login",
        color: AppColors.blue.withOpacity(0.7),
        size: FontSize.s22,
        letterSpacing: 1.5,
      ),
      titleSpacing: AppWidth.w4,
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
