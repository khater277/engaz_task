import 'package:engaz_task/core/utils/app_images.dart';
import 'package:engaz_task/core/utils/app_values.dart';
import 'package:engaz_task/features/login/presentation/widgets/forget_password_button.dart';
import 'package:engaz_task/features/login/presentation/widgets/head_text.dart';
import 'package:engaz_task/features/login/presentation/widgets/login_app_bar.dart';
import 'package:engaz_task/features/login/presentation/widgets/login_button.dart';
import 'package:engaz_task/features/login/presentation/widgets/password_text_field.dart';
import 'package:engaz_task/features/login/presentation/widgets/phone_number_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _passwordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LoginAppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(AppImages.logo)),
                const LoginHeadText(),
                SizedBox(height: AppHeight.h20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      PhoneNumberTextField(phoneController: _phoneController),
                      SizedBox(height: AppHeight.h20),
                      PasswordTextField(
                          passwordController: _passwordController),
                    ],
                  ),
                ),
                SizedBox(height: AppHeight.h3),
                const ForgetPasswordButton(),
                SizedBox(height: AppHeight.h15),
                LoginButton(
                    phoneController: _phoneController,
                    passwordController: _passwordController,
                    formKey: _formKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
