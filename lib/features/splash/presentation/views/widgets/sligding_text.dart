import 'package:cancer/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SligdingText extends StatelessWidget {
  const SligdingText({super.key, required this.sligingAnimation});

  final Animation<Offset> sligingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sligingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: sligingAnimation,
          child: Text(
            textAlign: TextAlign.center,
            'Welcome To AMNA',
            style: AppStyles.semiBold26(context),
          ),
        );
      },
    );
  }
}
