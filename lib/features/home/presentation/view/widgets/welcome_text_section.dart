import 'package:cancer/core/utils/App_Styles.dart';
import 'package:flutter/material.dart';

class WelcomeTextSection extends StatelessWidget {
  const WelcomeTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 33,
        ),
        Text(
          'WELCOME TO AMNA',
          style: AppStyles.extraBold26(context),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          'Take the test, be safe, be AMNA',
          style: AppStyles.mediam16(context),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
