import 'package:cancer/core/helper/image_picker.dart';
import 'package:cancer/core/helper/permession_handler.dart';
import 'package:cancer/core/networking/api_services.dart';
import 'package:cancer/core/networking/dio_service.dart';
import 'package:cancer/core/services/connectivity_service.dart';
import 'package:cancer/core/services/gemini_services.dart';
import 'package:cancer/core/services/stt_service.dart';
import 'package:cancer/core/services/text_to_speech_service.dart';
import 'package:cancer/features/auth/data/repository/auth_repo.dart';
import 'package:cancer/features/auth/data/repository/auth_repo_impl.dart';
import 'package:cancer/features/chat/data/datasources/base_home_data_source.dart';
import 'package:cancer/features/chat/data/datasources/remote_data_source.dart';
import 'package:cancer/features/chat/data/repository/home_repo_impl.dart';
import 'package:cancer/features/chat/domain/repositories/home_repository.dart';
import 'package:cancer/features/chat/domain/usecases/send_message_use_case.dart';
import 'package:cancer/features/recorder/data/datasources/base_recorder_data_source.dart';
import 'package:cancer/features/recorder/data/datasources/recorder_remote_data_source.dart';
import 'package:cancer/features/recorder/data/repository/recorder_repository_impl.dart';
import 'package:cancer/features/recorder/domain/repository/recorder_repo.dart';
import 'package:cancer/features/recorder/domain/usecases/ask_your_question_usecase.dart';
import 'package:cancer/features/risk_assessment_tool/data/repository/risk_assessment_repo_impl.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../features/ct_scan_tool/data/ct_scan_repository_impl.dart';

abstract class ServiceLocator {
  static final getIt = GetIt.instance;

  static void setup() {
    getIt.registerSingleton<ImagePicker>(ImagePicker());
    getIt.registerSingleton<PermessionHandler>(PermessionHandler());

    getIt.registerSingleton<ImagePickerHelper>(ImagePickerHelper(
        picker: getIt.get<ImagePicker>(),
        permessionHandler: getIt.get<PermessionHandler>()));
    getIt.registerSingleton<Dio>(Dio());

    getIt.registerSingleton<DioService>(DioService(getIt.get<Dio>()));
    getIt.registerSingleton<ApiServices>(getIt.get<DioService>());
    getIt.registerSingleton<RiskAssessmentRepoImpl>(
        RiskAssessmentRepoImpl(apiServices: getIt.get<ApiServices>()));
    getIt.registerSingleton<CtScanRepositoryImpl>(
        CtScanRepositoryImpl(getIt.get<ApiServices>()));
    getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(getIt.get<ApiServices>()),
    );
    getIt.registerSingleton<GeminiServices>(
        GeminiServices(getIt.get<ApiServices>()));
    getIt.registerSingleton<BaseHomeDataSource>(
        RemoteDataSource(getIt.get<GeminiServices>()));
    getIt.registerSingleton<HomeRepository>(
        HomeRepoImpl(getIt.get<BaseHomeDataSource>()));
    getIt.registerSingleton<SendMessageUseCase>(
        SendMessageUseCase(getIt.get<HomeRepository>()));
    getIt.registerSingleton<SpeechToText>(SpeechToText());
    getIt.registerSingleton<SpeechToTextService>(
        SpeechToTextService(getIt.get<SpeechToText>()));
    getIt.registerSingleton<BaseRecorderDataSource>(
        RecorderRemoteDataSource(getIt.get<GeminiServices>()));
    getIt.registerSingleton<RecoderRepository>(
        RecorderRepositoryImpl(getIt.get<BaseRecorderDataSource>()));
    getIt.registerSingleton<AskYourQuestionUsecase>(
        AskYourQuestionUsecase(getIt.get<RecoderRepository>()));
    getIt.registerSingleton<FlutterTts>(FlutterTts());
    getIt.registerSingleton<TextToSpeechService>(
        TextToSpeechService(getIt.get<FlutterTts>()));
    getIt.registerSingleton<Connectivity>(Connectivity());
    getIt.registerSingleton<ConnectivityService>(
        ConnectivityService(getIt.get<Connectivity>(), getIt.get<Dio>()));
  }
}
