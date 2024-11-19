import 'package:cancer/core/entities/message_entity.dart';
import 'package:cancer/core/models/send_message_request_model/send_message_request_model.dart';
import 'package:cancer/core/services/gemini_services.dart';
import 'package:cancer/features/recorder/data/datasources/base_recorder_data_source.dart';

class RecorderRemoteDataSource extends BaseRecorderDataSource {
  final GeminiServices geminiServices;

  RecorderRemoteDataSource(this.geminiServices);
  @override
  Future<MessageEntity> askYourQuestion(
      SendMessageRequestModel sendMessageRequestModel) async {
    return await geminiServices.sendMessage(sendMessageRequestModel);
  }
}
