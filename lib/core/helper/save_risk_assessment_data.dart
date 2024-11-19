import 'package:cancer/core/enums/assesstment_enum.dart';
import 'package:cancer/features/risk_assessment_tool/data/models/risk_assessment_model.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view_model/predicted_message_cubit/predicted_message_cubit.dart';
import 'package:flutter/material.dart';

void saveDataToVariables(BuildContext context, int index,
    List<RiskAssessmentModel> riskAssessmentItems) {
  switch (riskAssessmentItems[index].assesstmentEnum) {
    case AssesstmentEnum.age:
      PredictedMessageCubit.get(context).age = riskAssessmentItems[index]
          .answers[riskAssessmentItems[index].indexOfActive];
    case AssesstmentEnum.race:
      PredictedMessageCubit.get(context).race = riskAssessmentItems[index]
          .answers[riskAssessmentItems[index].indexOfActive];
    case AssesstmentEnum.firstDegree:
      PredictedMessageCubit.get(context).firstDegree =
          riskAssessmentItems[index]
              .answers[riskAssessmentItems[index].indexOfActive];
    case AssesstmentEnum.period:
      PredictedMessageCubit.get(context).period = riskAssessmentItems[index]
          .answers[riskAssessmentItems[index].indexOfActive];
    case AssesstmentEnum.ageFirstChild:
      PredictedMessageCubit.get(context).ageFirstChild =
          riskAssessmentItems[index]
              .answers[riskAssessmentItems[index].indexOfActive];
    case AssesstmentEnum.breastBiopsies:
      PredictedMessageCubit.get(context).breastBiopsies =
          riskAssessmentItems[index]
              .answers[riskAssessmentItems[index].indexOfActive];
    case AssesstmentEnum.bI:
      PredictedMessageCubit.get(context).bI = riskAssessmentItems[index]
          .answers[riskAssessmentItems[index].indexOfActive];
    case AssesstmentEnum.menopausalStatus:
      PredictedMessageCubit.get(context).menopausalStatus =
          riskAssessmentItems[index]
              .answers[riskAssessmentItems[index].indexOfActive];
    case AssesstmentEnum.mass:
      PredictedMessageCubit.get(context).mass = riskAssessmentItems[index]
          .answers[riskAssessmentItems[index].indexOfActive];
  }
}
