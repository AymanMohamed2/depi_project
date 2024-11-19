import 'package:cancer/core/errors/failures.dart';
import 'package:cancer/features/risk_assessment_tool/data/models/predicted_message_request_model.dart';
import 'package:dartz/dartz.dart';

abstract class RiskAssessmentRepo {
  Future<Either<Failure, String>> predictedMessage(
      PredictedMessageRequestModel predictedMessageRequestModel);
}
