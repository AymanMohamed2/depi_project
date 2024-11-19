import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RegisterFirstSection extends StatelessWidget {
  const RegisterFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        AspectRatio(
            aspectRatio: 10 / 8.5,
            child: Image.asset('assets/images/register_vector.png')),
        Text(
          '- Welcome to AMNA -',
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
              'Register',
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
