import 'package:cancer/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.onChanged,
    this.validator,
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
  });
  final String text;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      style: const TextStyle(
        color: AppColors.primary,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red),
        filled: true,
        fillColor: const Color.fromARGB(255, 248, 248, 248),
        suffixIcon: suffixIcon,
        hintText: text,
        hintStyle: const TextStyle(color: AppColors.primary),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: AppColors.primary)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.primary)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: AppColors.primary)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
