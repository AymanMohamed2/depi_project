import 'package:cancer/core/helper/service_locator.dart';
import 'package:cancer/core/services/connectivity_service.dart';
import 'package:cancer/core/services/stt_service.dart';
import 'package:cancer/core/services/text_to_speech_service.dart';
import 'package:cancer/features/recorder/domain/usecases/ask_your_question_usecase.dart';
import 'package:cancer/features/recorder/presentation/view/widgets/recorder_view_body.dart';
import 'package:cancer/features/recorder/presentation/view_model/cubit/ask_your_question_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecorderView extends StatelessWidget {
  const RecorderView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AskYourQuestionCubit(
        ServiceLocator.getIt.get<AskYourQuestionUsecase>(),
        ServiceLocator.getIt.get<TextToSpeechService>(),
        ServiceLocator.getIt.get<SpeechToTextService>(),
        ServiceLocator.getIt.get<ConnectivityService>(),
      ),
      child: const Scaffold(
        body: RecorderViewBody(),
      ),
    );
  }
}
