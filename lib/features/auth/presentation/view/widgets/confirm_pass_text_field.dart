import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/widgets/custttom_text_field.dart';
import 'package:flutter/material.dart';

class ConfirmPassTextField extends StatefulWidget {
  const ConfirmPassTextField({
    super.key,
    this.validator,
    required this.onChanged,
    required this.controller,
  });

  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  State<ConfirmPassTextField> createState() => _ConfirmPassTextFieldState();
}

class _ConfirmPassTextFieldState extends State<ConfirmPassTextField> {
  bool isShown = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
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
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      text: 'Confirm your Password',
    );
  }
}
