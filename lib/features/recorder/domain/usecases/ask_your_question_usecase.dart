import 'package:cancer/core/entities/message_entity.dart';
import 'package:cancer/core/errors/failures.dart';
import 'package:cancer/core/models/send_message_request_model/send_message_request_model.dart';
import 'package:cancer/features/recorder/domain/repository/recorder_repo.dart';
import 'package:dartz/dartz.dart';

class AskYourQuestionUsecase {
  final RecoderRepository recoderRepository;

  AskYourQuestionUsecase(this.recoderRepository);
  Future<Either<Failure, MessageEntity>> execute(
      SendMessageRequestModel sendMessageRequestModel) async {
    return await recoderRepository.askYourQuestion(sendMessageRequestModel);
  }
}
