import 'package:cancer/features/auth/presentation/view/widgets/custttom_text_field.dart';
import 'package:flutter/material.dart';

class UserNameTextField extends StatelessWidget {
  const UserNameTextField(
      {super.key, required this.onChanged, required this.controller});

  final Function(String)? onChanged;

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      text: 'Enter your Username',
      controller: controller,
      onChanged: onChanged,
    );
  }
}
