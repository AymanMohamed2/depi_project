import 'package:cancer/core/entities/message_entity.dart';
import 'package:cancer/core/models/send_message_request_model/send_message_request_model.dart';
import 'package:cancer/core/services/gemini_services.dart';
import 'package:cancer/features/chat/data/datasources/base_home_data_source.dart';

class RemoteDataSource extends BaseHomeDataSource {
  final GeminiServices geminiServices;

  RemoteDataSource(this.geminiServices);
  @override
  Future<MessageEntity> sendMessage(
      SendMessageRequestModel sendMessageRequestModel) async {
    return geminiServices.sendMessage(sendMessageRequestModel);
  }
}
