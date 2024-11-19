import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/home/data/models/tools_card_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomToolCard extends StatelessWidget {
  CustomToolCard({
    super.key,
    required this.model,
  });

  final ToolsCardModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: model.onTap,
      child: Card(
        color: AppColors.appBarColor,
        // Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Icon(
                model.icon,
                color: AppColors.primary,
                size: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(model.title, style: AppStyles.bold18(context)),
              const SizedBox(
                height: 10,
              ),
              Text(model.description, style: AppStyles.regular15(context)),
            ],
          ),
        ),
      ),
    );
  }
}
