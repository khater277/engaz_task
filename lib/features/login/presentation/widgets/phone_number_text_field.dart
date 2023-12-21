import 'package:engaz_task/core/shared_widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    super.key,
    required TextEditingController phoneController,
  }) : _phoneController = phoneController;

  final TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: "Phone Number",
      controller: _phoneController,
      inputType: TextInputType.phone,
      suffixIcon: Icons.call,
      validator: (p0) {
        String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
        RegExp regExp = RegExp(pattern);
        if (_phoneController.text.isEmpty) {
          return 'Please enter mobile number';
        } else if (!regExp.hasMatch(_phoneController.text)) {
          return 'Please enter valid mobile number';
        }
        return null;
      },
    );
  }
}
