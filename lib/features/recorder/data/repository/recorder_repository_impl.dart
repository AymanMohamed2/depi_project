import 'package:cancer/core/entities/message_entity.dart';
import 'package:cancer/core/errors/failures.dart';
import 'package:cancer/core/models/send_message_request_model/send_message_request_model.dart';
import 'package:cancer/features/recorder/data/datasources/base_recorder_data_source.dart';
import 'package:cancer/features/recorder/domain/repository/recorder_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RecorderRepositoryImpl extends RecoderRepository {
  final BaseRecorderDataSource baseRecorderDataSource;

  RecorderRepositoryImpl(this.baseRecorderDataSource);
  @override
  Future<Either<Failure, MessageEntity>> askYourQuestion(
      SendMessageRequestModel sendMessageRequestModel) async {
    try {
      final result =
          await baseRecorderDataSource.askYourQuestion(sendMessageRequestModel);
      return Right(result);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
