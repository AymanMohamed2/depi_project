import 'package:cancer/core/errors/failures.dart';
import 'package:cancer/core/networking/api_constance.dart';
import 'package:cancer/core/networking/api_end_points.dart';
import 'package:cancer/core/networking/api_services.dart';
import 'package:cancer/features/auth/data/models/login_request_model.dart';
import 'package:cancer/features/auth/data/models/register_request_model.dart';
import 'package:cancer/features/auth/data/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiServices apiServices;

  AuthRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, void>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      await apiServices.post(
          url: ApiConstance.baseUrl + ApiEndPoints.loginEndPoint,
          body: loginRequestModel.toJson());
      return right(null);
    } on Exception catch (e) {
      if (e is DioException) {
        print(e);
        return Left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, void>> register(
      RegisterRequestModel registerRequestModel) async {
    try {
      await apiServices.post(
          url: ApiConstance.baseUrl + ApiEndPoints.registerEndPoint,
          body: registerRequestModel.toJson());
      return right(null);
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
