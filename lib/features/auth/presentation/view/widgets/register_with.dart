import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/widgets/login&register_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterWith extends StatelessWidget {
  const RegisterWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Or Register With',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginAndRegisterIcons(
              onTap: () {},
              icon: FontAwesomeIcons.google,
            ),
            const SizedBox(
              width: 8,
            ),
            LoginAndRegisterIcons(
              onTap: () {},
              icon: FontAwesomeIcons.facebook,
            ),
          ],
        )
      ],
    );
  }
}
