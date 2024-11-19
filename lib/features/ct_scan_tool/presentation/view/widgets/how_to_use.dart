import 'package:cancer/core/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: CustomContainer(
          title: 'How to use?',
          subTitle:
              '1) Upload your breast ultrasound scan securely.\n2) AI-powered analysis: Our advanced technology analyzes your scan and predicts the likelihood of a breast mass being:\n\n- Benign (non-cancerous): Providing peace of mind.\n- Malignant (cancerous): Helping you get the care you need quickly.\n- Normal tissue: Minimizing unnecessary follow-up procedures.'),
    );
  }
}
