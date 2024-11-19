import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/home/presentation/view/widgets/chats_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.scaleDown,
            child: Text(
              '"Breast Canser Survival rate after 5 years"',
              style: AppStyles.semiBold26(context),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const ChartsData(),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
