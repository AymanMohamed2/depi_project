import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/home/presentation/view/widgets/our_tools_list.dart';
import 'package:flutter/material.dart';

class OurToolsSection extends StatelessWidget {
  const OurToolsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Text('- OUR TOOLS -', style: AppStyles.semiBold26(context)),
        const SizedBox(
          height: 15,
        ),
        // ignore: prefer_const_constructors
        OurToolsList(),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
