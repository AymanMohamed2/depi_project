import 'package:cancer/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginAndRegisterIcons extends StatelessWidget {
  const LoginAndRegisterIcons(
      {super.key, required this.icon, required this.onTap});

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: AppColors.primary,
        child: FaIcon(
          icon,
          color: AppColors.backColor,
        ),
      ),
    );
  }
}
