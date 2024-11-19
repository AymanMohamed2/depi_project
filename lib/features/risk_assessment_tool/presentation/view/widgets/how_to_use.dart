import 'package:cancer/core/widgets/custom_container.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/swipe_to_left.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            CustomContainer(
                title: 'How to Use the Risk Assessment Tool',
                subTitle:
                    'This tool is designed to help you understand your potential risk of developing breast cancer. By answering a series of questions about your family history, menstrual and reproductive history, and other factors, you can receive a personalized risk assessment.\n\nHere\'s how to use the tool:\n\n- Read through the questions carefully: Each question will be accompanied by a clear explanation and answer options. Take your time to understand what each question is asking.\n- Select the answer that best reflects your situation: Make sure your responses are as accurate as possible, as this will influence the accuracy of your risk assessment.\n- Complete all the questions.\n- Submit your answers: Once you\'ve answered all the questions, click the "predict" button.\n- Review your results: The tool will categorize you into a risk category based on your answers. This will indicate whether you have a higher or lower likelihood of developing breast cancer.'),
            SizedBox(
              height: 25,
            ),
            SwipeToLeft(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
