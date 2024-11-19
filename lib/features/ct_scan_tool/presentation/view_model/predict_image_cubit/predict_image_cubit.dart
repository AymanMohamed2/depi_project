import 'package:cancer/core/helper/show_alert_dialog.dart';
import 'package:cancer/core/helper/snake_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/helper/loading_indicator.dart';
import '../../../data/ct_scan_repository.dart';
import 'predict_image_state.dart';

class PredictImageCubit extends Cubit<PredictImageState> {
  PredictImageCubit(this.ctScanReporitory) : super(PredictImageInitial());
  static PredictImageCubit get(context) => BlocProvider.of(context);

  final CtScanRepository ctScanReporitory;
  Future<void> predictImage(XFile imageFile) async {
    emit(PredictImageLoading());
    final result = await ctScanReporitory.predictImage(imageFile);
    result.fold((l) => emit(PredictImageFailure(l.errMessage)),
        (r) => emit(PredictImageSuccess(r)));
  }

  void checkStates(PredictImageState state, BuildContext context) {
    if (state is PredictImageSuccess) {
      LoadingIndicator.hideLoadingIndicator(context);
      showAlert(context, state.predictMessage);
    } else if (state is PredictImageFailure) {
      LoadingIndicator.hideLoadingIndicator(context);

      customSnakeBar(context, text: state.errMessage);
    } else if (state is PredictImageLoading) {
      LoadingIndicator.showLoadingIndicator(context);
    }
  }
}
