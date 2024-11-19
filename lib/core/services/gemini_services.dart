import 'package:cancer/core/entities/message_entity.dart';
import 'package:cancer/core/models/message_model/message_model.dart';
import 'package:cancer/core/models/send_message_request_model/send_message_request_model.dart';
import 'package:cancer/core/networking/api_constance.dart';
import 'package:cancer/core/networking/api_services.dart';
import 'package:cancer/core/networking/end_points.dart';

class GeminiServices {
  final ApiServices apiService;

  GeminiServices(this.apiService);
  Future<MessageEntity> sendMessage(
      SendMessageRequestModel sendMessageRequestModel) async {
    var result = await apiService.post(
        url:
            "${ApiConstance.geminiBaseUrl + EndPoints.generateContent}?key=${ApiConstance.geminiApiKey}",
        body: sendMessageRequestModel.toJson());

    return MessageModel.fromJson(result);
  }
}
