import 'package:cancer/core/helper/service_locator.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/risk_assessment_tool/data/repository/risk_assessment_repo_impl.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/how_to_use.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/questions_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/predicted_message_cubit/predicted_message_cubit.dart';

class RiskAssessmentToolView extends StatelessWidget {
  const RiskAssessmentToolView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PredictedMessageCubit(
          ServiceLocator.getIt.get<RiskAssessmentRepoImpl>()),
      child: Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: AppColors.backColor,
        body: PageView(
          scrollDirection: Axis.horizontal,
          children: const [
            HowToUse(),
            QuestionsForm(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget buildAppBar(BuildContext context) => AppBar(
        title: Text(
          'Risk Assessment Tool',
          style: AppStyles.bold25(context).copyWith(color: AppColors.primary),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.primary),
        backgroundColor: AppColors.appBarColor,
      );
}
