import 'package:cancer/core/helper/save_risk_assessment_data.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../../../core/enums/assesstment_enum.dart';
import '../../../data/models/risk_assessment_model.dart';

class QuestionsList extends StatefulWidget {
  const QuestionsList({super.key});

  @override
  State<QuestionsList> createState() => _QuestionsListState();
}

class _QuestionsListState extends State<QuestionsList> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: riskAssessmentItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                riskAssessmentItems[index].question,
                style: AppStyles.mediamColored20(context),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Column(
                  children: List.generate(
                      riskAssessmentItems[index].answers.length, (answerIndex) {
                    return GestureDetector(
                      onTap: () {
                        updateIndexOfAnswer(index, answerIndex);
                        saveDataToVariables(
                            context, index, riskAssessmentItems);
                      },
                      child: CustomButton(
                          text: riskAssessmentItems[index].answers[answerIndex],
                          isActive: riskAssessmentItems[index].indexOfActive ==
                              answerIndex),
                    );
                  }),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void updateIndexOfAnswer(int index, int answerIndex) {
    riskAssessmentItems[index].indexOfActive = answerIndex;
    setState(() {});
  }

  List<RiskAssessmentModel> riskAssessmentItems = [
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.age,
        question: "What is your age (age group)?",
        answers: [
          '18-29',
          '30-34',
          '35-39',
          '40-44',
          '45-49',
          '50-54',
          '55-59',
          '60-64',
          '65-69',
          '70-74',
          '75-79',
          '80-84',
          'Age 85 or older',
        ]),
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.race,
        question: "What is your race/ethnicity?",
        answers: [
          'Non-Hispanic white',
          'Non-Hispanic black',
          'Asian/Pacific Islander',
          'Native American',
          'Hispanic',
          'Other/mixed',
        ]),
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.firstDegree,
        question:
            "Have any of your first-degree relatives (mother, sister or daughter) been diagnosed with breast cancer?",
        answers: [
          'Yes',
          'No',
        ]),
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.period,
        question:
            "How old were you when you had your first menstrual period (Age at menarche)?",
        answers: [
          'Age 14 or older',
          'Age 12-13',
          'Age < 12',
        ]),
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.ageFirstChild,
        question: "What was your age when you had your first child?",
        answers: [
          'Age < 20',
          'Age 20-24',
          'Age 25-29',
          'Age 30 or older',
          'Haven\'t given birth yet',
        ]),
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.breastBiopsies,
        question: "Have you had any prior breast biopsies or aspiration?",
        answers: [
          'Yes',
          'No',
        ]),
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.bI,
        question: "What is your BI-RADS breast density?",
        answers: [
          'Almost entirely fat',
          'Scattered fibroglandular densities',
          'Heterogeneously dense',
          'Extremely dense',
        ]),
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.menopausalStatus,
        question: "What is your menopausal status?",
        answers: [
          'Pre-or peri-menopausal',
          'Post-menopausal',
        ]),
    RiskAssessmentModel(
        assesstmentEnum: AssesstmentEnum.mass,
        question: "What is your body mass index (kg/m^2)?",
        answers: [
          '10-24.99',
          '25-29.99',
          '30-34.99',
          '35 or more',
        ]),
  ];
}
