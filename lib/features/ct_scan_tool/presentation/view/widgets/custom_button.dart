import 'package:cancer/core/helper/snake_bar.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view_model/predict_image_cubit/predict_image_cubit.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view_model/predict_image_cubit/predict_image_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/pick_image/pick_image_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 47),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: AppColors.primary,
          ),
          onPressed: () async {
            if (PickImageCubit.get(context).imageXFile != null) {
              await PredictImageCubit.get(context)
                  .predictImage(PickImageCubit.get(context).imageXFile!);
            } else {
              customSnakeBar(context, text: 'Please Select an Image');
            }
          },
          child: BlocListener<PredictImageCubit, PredictImageState>(
            listener: (context, state) {
              PredictImageCubit.get(context).checkStates(state, context);
            },
            child: Text(
              'PREDICT',
              style: AppStyles.semiBold18(context),
            ),
          ),
        ),
      ),
    );
  }
}
