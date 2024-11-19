import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SwipeToLeft extends StatelessWidget {
  const SwipeToLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Swipe to the left',
          style: AppStyles.bold30(context).copyWith(color: AppColors.primary),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.swipe_left,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
