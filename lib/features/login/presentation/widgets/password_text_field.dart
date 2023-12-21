import 'package:engaz_task/core/shared_widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  ValueNotifier<bool> visible = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: visible,
      builder: (context, value, child) => CustomTextField(
        labelText: "Password",
        controller: widget._passwordController,
        inputType: TextInputType.visiblePassword,
        obscureText: !value,
        suffixIcon: value == true ? Icons.visibility_off : Icons.visibility,
        suffixTap: () => visible.value = !value,
        validator: (p0) {
          if (widget._passwordController.text.isEmpty) {
            return 'Please enter your password';
          } else if (widget._passwordController.text.length < 6) {
            return 'Password must be 6 characters or more.';
          }
          return null;
        },
      ),
    );
  }
}
