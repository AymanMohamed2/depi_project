import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/widgets/custttom_text_field.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.validator,
    required this.onChanged,
    required this.controller,
  });

  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isShown = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.controller,
      obscureText: isShown,
      suffixIcon: isShown
          ? Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                color: const Color.fromARGB(255, 197, 192, 192),
                icon: const Icon(Icons.visibility_off),
                onPressed: () {
                  isShown = false;
                  setState(() {});
                },
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                color: AppColors.primary,
                icon: const Icon(Icons.visibility),
                onPressed: () {
                  isShown = true;
                  setState(() {});
                },
              ),
            ),
      validator: widget.validator,
      onChanged: widget.onChanged,
      text: 'Enter your Password',
    );
  }
}
