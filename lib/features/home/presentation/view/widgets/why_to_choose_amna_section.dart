import 'package:cancer/core/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class WhyTOChooseAmnaSection extends StatelessWidget {
  const WhyTOChooseAmnaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      title: 'Why Choosing\nAMNA?',
      subTitle:
          'AMNA is concerned with everything related to breast cancer and provides powerful prediction tools so one doesn\'t have to go through a million other sites to find information. Knowing the risk of developing breast cancer early on \is proved by research to increase the chances of survival and early treatment. \The survey doesn\'t only determine the risk but also gives useful suggestions and if a breast ultrasound scan is available one can further increase their awareness of the risk.',
    );
  }
}
