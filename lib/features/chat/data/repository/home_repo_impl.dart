import 'package:cancer/core/entities/message_entity.dart';
import 'package:cancer/core/errors/failures.dart';
import 'package:cancer/core/models/send_message_request_model/send_message_request_model.dart';
import 'package:cancer/features/chat/data/datasources/base_home_data_source.dart';
import 'package:cancer/features/chat/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepository {
  final BaseHomeDataSource baseHomeDataSource;

  HomeRepoImpl(this.baseHomeDataSource);
  @override
  Future<Either<Failure, MessageEntity>> sendMessage(
      SendMessageRequestModel sendMessageRequestModel) async {
    try {
      var result =
          await baseHomeDataSource.sendMessage(sendMessageRequestModel);
      return Right(result);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
