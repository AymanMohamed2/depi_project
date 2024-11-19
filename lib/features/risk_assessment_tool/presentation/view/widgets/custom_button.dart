import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.isActive});

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: AnimatedContainer(
          width: double.infinity,
          duration: const Duration(milliseconds: 400),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(
              vertical: 10, horizontal: isActive ? 30 : 20),
          child: Text(
            text,
            style: AppStyles.mediamColored17(context)
                .copyWith(color: isActive ? Colors.white : AppColors.primary),
          ),
        ),
      ),
    );
  }
}
