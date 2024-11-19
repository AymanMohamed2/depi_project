import 'package:cancer/features/chat/presentation/view/home_view.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view/ct_scan_tool_view.dart';
import 'package:cancer/features/home/data/models/tools_card_model.dart';
import 'package:cancer/features/home/presentation/view/widgets/custom_tools_card.dart';
import 'package:cancer/features/recorder/presentation/view/recorder_view.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/risk_assessment_tool_view.dart';
import 'package:flutter/material.dart';

class OurToolsList extends StatelessWidget {
  const OurToolsList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      ToolsCardModel(
        icon: Icons.toll_outlined,
        title: 'Risk Assessment Tool',
        description:
            'Our risk assessment tool uses analysis techniques and machine learning algorithms to provide a risk prediction for those concered with developing breast cancer.',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const RiskAssessmentToolView(),
            ),
          );
        },
      ),
      ToolsCardModel(
        icon: Icons.image,
        title: 'Breast Ultrasound Classifier',
        description:
            'A powerful tool that helps those concerned to predict their risk of developing breast cancer through their ultrasound images. It\'s a readily available tool that can be used anywhere, anytime easily to understand ultrasound scans quickly.',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const CtScanToolView(),
            ),
          );
        },
      ),
      ToolsCardModel(
        icon: Icons.chat,
        title: 'Chat Bot',
        description:
            'A powerful tool that helps those concerned to predict their risk of developing breast cancer through their ultrasound images. It\'s a readily available tool that can be used anywhere, anytime easily to understand ultrasound scans quickly.',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const ChatView(),
            ),
          );
        },
      ),
      ToolsCardModel(
        icon: Icons.mic,
        title: 'Talking Support',
        description:
            'A powerful tool that helps those concerned to predict their risk of developing breast cancer through their ultrasound images. It\'s a readily available tool that can be used anywhere, anytime easily to understand ultrasound scans quickly.',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const RecorderView(),
            ),
          );
        },
      ),
    ];
    return Column(
        children: items
            .map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CustomToolCard(model: e),
                ))
            .toList());
  }
}
