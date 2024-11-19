import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/register_view.dart';
import 'package:flutter/material.dart';

class CustomRegeterButton extends StatelessWidget {
  const CustomRegeterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: const BorderSide(
              color: AppColors.primary,
              width: 1.0,
            ),
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: AppColors.backColor),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const RegisterView(),
            ),
          );
        },
        child: const Text(
          'Register',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
