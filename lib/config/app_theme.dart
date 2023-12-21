import 'package:engaz_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:engaz_task/core/utils/font_styles.dart';
import 'package:engaz_task/core/utils/app_fonts.dart';
import 'package:engaz_task/core/utils/app_values.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      /// colors
      primarySwatch: AppColors.generateMaterialColor(AppColors.blue),
      scaffoldBackgroundColor: AppColors.white,
      // focusColor: AppColors.black,
      // canvasColor: AppColors.grey.withOpacity(0.3),
      // highlightColor: AppColors.grey.withOpacity(0.5),

      //Divider Color
      dividerColor: AppColors.grey.withOpacity(0.3),

      /// app bar
      appBarTheme: AppBarTheme(
        color: AppColors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: AppColors.black,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
        titleTextStyle:
            getBoldStyle(fontColor: AppColors.white, fontSize: FontSize.s16),
      ),

      /// elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        elevation: 0,
        // foregroundColor: AppColors.teal,
        textStyle: getMediumStyle(
          fontColor: AppColors.white,
          fontSize: FontSize.s15,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s10)),
        minimumSize: Size(double.infinity, AppHeight.h45),
      )),

      ///card
      cardTheme: CardTheme(
        elevation: 0,
        color: AppColors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s16)),
      ),

      /// text
      textTheme: TextTheme(
        // big titles
        bodyLarge:
            getBoldStyle(fontColor: AppColors.black, fontSize: FontSize.s16),
        // small titles
        bodyMedium: getSemiBoldStyle(fontColor: AppColors.black),
        // body content grey
        bodySmall: getMediumStyle(fontColor: AppColors.grey),
        // body content primary
        displaySmall: getRegularStyle(fontColor: AppColors.black),
      ),

      /// input decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: getRegularStyle(fontColor: AppColors.grey.withOpacity(0.7)),
        labelStyle: getMediumStyle(fontColor: Colors.grey),
        contentPadding: EdgeInsets.symmetric(
            vertical: AppHeight.h15, horizontal: AppWidth.w12),
        errorStyle: getRegularStyle(
            fontColor: AppColors.lightRed, fontSize: FontSize.s12),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
            borderSide: BorderSide(
              color: AppColors.blue.withOpacity(0.5),
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
            borderSide: BorderSide(
              color: AppColors.blue.withOpacity(0.5),
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
            borderSide: BorderSide(
              color: AppColors.blue.withOpacity(0.5),
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
            borderSide: BorderSide(
              color: AppColors.blue.withOpacity(0.5),
            )),
      ),
    );
  }
}
