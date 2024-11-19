import 'package:cancer/features/risk_assessment_tool/data/repository/risk_assessment_repo.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view_model/predicted_message_cubit/predicted_message_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/predicted_message_request_model.dart';

class PredictedMessageCubit extends Cubit<PredictedMessageState> {
  static PredictedMessageCubit get(context) => BlocProvider.of(context);
  PredictedMessageCubit(this.riskAssessmentRepo)
      : super(PredictedMessageStateInitial());
  String? age,
      race,
      firstDegree,
      period,
      ageFirstChild,
      breastBiopsies,
      bI,
      menopausalStatus,
      mass;

  final RiskAssessmentRepo riskAssessmentRepo;
  Future<void> predictedMessage() async {
    emit(PredictedMessageStateLoading());
    if (isValidate()) {
      PredictedMessageRequestModel predictedMessageRequestModel =
          PredictedMessageRequestModel(
        ageGroup5Years: age!,
        raceEth: race!,
        firstDegreeHx: firstDegree!,
        ageMenarche: period!,
        ageFirstBirth: ageFirstChild!,
        breastBiopsies: breastBiopsies!,
        biradsBreastDensity: bI!,
        menopaus: menopausalStatus!,
        bmiGroup: mass!,
      );
      final result = await riskAssessmentRepo
          .predictedMessage(predictedMessageRequestModel);
      result.fold((l) {
        emit(PredictedMessageStateFailure(errMessage: l.errMessage));
      }, (r) {
        emit(PredictedMessageStateSuccess(predictMessage: r));
      });
    } else {
      emit(PredictedMessageStateFailure(
          errMessage: 'Please Answer all the questions'));
    }
  }

  bool isValidate() {
    if (age != null &&
        race != null &&
        firstDegree != null &&
        period != null &&
        ageFirstChild != null &&
        breastBiopsies != null &&
        bI != null &&
        menopausalStatus != null &&
        mass != null) {
      return true;
    } else {
      return false;
    }
  }
}
