import 'package:cancer/core/helper/image_picker.dart';
import 'package:cancer/core/helper/service_locator.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/ct_scan_tool/data/ct_scan_repository_impl.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view_model/pick_image/pick_image_cubit.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view_model/predict_image_cubit/predict_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/ct_scan_tool_view_body.dart';

class CtScanToolView extends StatelessWidget {
  const CtScanToolView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                PickImageCubit(ServiceLocator.getIt.get<ImagePickerHelper>())),
        BlocProvider(
            create: (context) => PredictImageCubit(
                ServiceLocator.getIt.get<CtScanRepositoryImpl>())),
      ],
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 7),
            child: Text(
              'Breast Ultrasound Classifie',
              style:
                  AppStyles.bold25(context).copyWith(color: AppColors.primary),
            ),
          ),
          iconTheme: const IconThemeData(color: AppColors.primary),
          backgroundColor: AppColors.appBarColor,
        ),
        backgroundColor: AppColors.backColor,
        body: const CtScanToolViewBody(),
      ),
    );
  }
}
