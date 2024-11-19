import 'package:cancer/core/helper/service_locator.dart';
import 'package:cancer/features/chat/domain/usecases/send_message_use_case.dart';
import 'package:cancer/features/chat/presentation/view/widgets/home_view_body.dart';
import 'package:cancer/features/chat/presentation/view_model/send_message_cubit/send_message_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatView extends StatelessWidget {
  static const String routeName = '/chat_view';
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SendMessageCubit(ServiceLocator.getIt.get<SendMessageUseCase>()),
      child: const Scaffold(
        body: ChatViewBody(),
      ),
    );
  }
}
