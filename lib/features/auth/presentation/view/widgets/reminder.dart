import 'package:cancer/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder(
      {super.key,
      required this.question,
      required this.button,
      required this.onPressed});
  final String question;
  final String button;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: const TextStyle(
            color: AppColors.primary,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            button,
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
