import 'package:cancer/core/errors/failures.dart';
import 'package:cancer/features/auth/data/models/login_request_model.dart';
import 'package:cancer/features/auth/data/models/register_request_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> login(LoginRequestModel loginRequestModel);
  Future<Either<Failure, void>> register(
      RegisterRequestModel registerRequestModel);
}
