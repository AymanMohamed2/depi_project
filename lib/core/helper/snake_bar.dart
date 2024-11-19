import 'package:cancer/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void customSnakeBar(
  BuildContext context, {
  required String text,
  Color backgroundColor = AppColors.primary,
  Color textColor = AppColors.backColor,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundColor,
      content: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    ),
  );
}
