import 'package:cancer/core/utils/App_Styles.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primary,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyles.bold30(context),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              subTitle,
              style: AppStyles.mediam15(context),
            ),
          ],
        ),
      ),
    );
  }
}
