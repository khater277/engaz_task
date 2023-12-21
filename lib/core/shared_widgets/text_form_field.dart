import 'package:engaz_task/core/utils/app_colors.dart';
import 'package:engaz_task/core/utils/app_values.dart';
import 'package:engaz_task/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final bool readOnly;
  final int? maxlength;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? suffixTap;
  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onFelidSubmitted;
  final void Function()? onTap;
  final TextEditingController controller;
  final TextInputType inputType;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.maxlength,
    this.obscureText = false,
    this.readOnly = false,
    required this.controller,
    this.onChange,
    this.onFelidSubmitted,
    this.onTap,
    required this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixTap,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: inputType,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      maxLength: maxlength,
      style: getSemiBoldStyle(
          fontColor: Theme.of(context).textTheme.bodyLarge!.color!),
      validator: validator,
      onChanged: onChange,
      onFieldSubmitted: onFelidSubmitted,
      onTap: onTap,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: IconButton(
          icon: Icon(
            suffixIcon,
            size: AppSize.s17,
            color: AppColors.darkBlue,
          ),
          onPressed: suffixTap ?? () {},
        ),
      ),
    );
  }
}
