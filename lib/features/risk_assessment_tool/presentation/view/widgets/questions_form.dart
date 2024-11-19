import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/custom_submit_botton.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/questions_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsForm extends StatelessWidget {
  const QuestionsForm({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return CustomScrollView(
      // ignore: prefer_const_literals_to_create_immutables
      slivers: [
        const QuestionsList(),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomSubmitButton(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
      ],
    );
  }
}
