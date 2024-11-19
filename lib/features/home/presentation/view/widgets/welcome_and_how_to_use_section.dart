import 'package:cancer/features/home/presentation/view/widgets/welcome_text_section.dart';
import 'package:cancer/features/home/presentation/view/widgets/why_to_choose_amna_section.dart';
import 'package:flutter/material.dart';

class WelcomeAndHowToUseSection extends StatelessWidget {
  const WelcomeAndHowToUseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WelcomeTextSection(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: WhyTOChooseAmnaSection(),
        ),
      ],
    );
  }
}
