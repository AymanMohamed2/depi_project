import 'package:cancer/core/helper/show_alert_dialog.dart';
import 'package:cancer/core/helper/snake_bar.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/core/widgets/custom_loading_indicator.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view_model/predicted_message_cubit/predicted_message_cubit.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view_model/predicted_message_cubit/predicted_message_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: AppColors.primary),
        onPressed: () {
          PredictedMessageCubit.get(context).predictedMessage();
        },
        child: BlocConsumer<PredictedMessageCubit, PredictedMessageState>(
          listener: (context, state) {
            if (state is PredictedMessageStateSuccess) {
              showAlert(context, state.predictMessage);
            } else if (state is PredictedMessageStateFailure) {
              customSnakeBar(context, text: state.errMessage);
            }
          },
          builder: (context, state) {
            if (state is PredictedMessageStateLoading) {
              return const CustomLoadingIndicator();
            } else {
              return Text(
                'SUBMIT',
                style: AppStyles.semiBold18(context),
              );
            }
          },
        ),
      ),
    );
  }
}
