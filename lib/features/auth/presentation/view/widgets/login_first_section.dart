import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LoginFirstSection extends StatelessWidget {
  const LoginFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        AspectRatio(
            aspectRatio: 10 / 8.5,
            child: Image.asset('assets/images/login_vector.png')),
        Text(
          '- Welcome Back -',
          style: AppStyles.bold30(context).copyWith(
            color: AppColors.primary,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Text(
              'Login',
              style: AppStyles.bold30(context)
                  .copyWith(color: AppColors.primary, fontSize: 20),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
