import 'package:cancer/features/auth/presentation/view/widgets/custttom_text_field.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField(
      {super.key,
      required this.onChanged,
      this.validator,
      required this.controller});

  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      text: 'Enter your Email',
      controller: controller,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
