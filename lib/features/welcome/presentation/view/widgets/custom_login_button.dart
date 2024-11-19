import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/login_view.dart';
import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const LoginView(),
            ),
          );
        },
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
