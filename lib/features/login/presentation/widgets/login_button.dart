import 'package:engaz_task/app/injector.dart';
import 'package:engaz_task/config/navigation.dart';
import 'package:engaz_task/core/shared_widgets/button.dart';
import 'package:engaz_task/core/shared_widgets/snack_bar.dart';
import 'package:engaz_task/core/utils/app_colors.dart';
import 'package:engaz_task/features/home/presentation/screens/home_screen.dart';
import 'package:engaz_task/features/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController _phoneController;
  final TextEditingController _passwordController;
  final GlobalKey<FormState> _formKey;
  const LoginButton({
    required TextEditingController phoneController,
    required TextEditingController passwordController,
    required GlobalKey<FormState> formKey,
    super.key,
  })  : _phoneController = phoneController,
        _passwordController = passwordController,
        _formKey = formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          loginError: (errorMsg) =>
              errorSnackBar(context: context, errorMsg: errorMsg),
          loginSuccess: (loginResponseModel) =>
              Go.to(context: context, screen: const HomeScreen()),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return CustomButton(
          text: "Log in",
          fillColor: AppColors.blue,
          loadingCondition: state.maybeWhen(
            loginLoading: () => true,
            orElse: () => false,
          ),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              di<LoginCubit>().login(
                phoneNumber: _phoneController.text,
                password: _passwordController.text,
              );
            }
          },
        );
      },
    );
  }
}
