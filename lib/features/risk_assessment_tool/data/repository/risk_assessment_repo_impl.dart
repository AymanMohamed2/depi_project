import 'package:cancer/core/errors/failures.dart';
import 'package:cancer/core/networking/api_constance.dart';
import 'package:cancer/core/networking/api_end_points.dart';
import 'package:cancer/core/networking/api_services.dart';
import 'package:cancer/features/risk_assessment_tool/data/models/predicted_message_request_model.dart';
import 'package:cancer/features/risk_assessment_tool/data/repository/risk_assessment_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RiskAssessmentRepoImpl extends RiskAssessmentRepo {
  final ApiServices apiServices;

  RiskAssessmentRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, String>> predictedMessage(
      PredictedMessageRequestModel predictedMessageRequestModel) async {
    try {
      final result = await apiServices.post(
        url: ApiConstance.baseUrl + ApiEndPoints.predictedMessageEndPoint,
        body: predictedMessageRequestModel.toJson(),
      );

      return right(result['message']);
    } on Exception catch (e) {
      if (e is DioException) {
        print(e);
        return Left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
