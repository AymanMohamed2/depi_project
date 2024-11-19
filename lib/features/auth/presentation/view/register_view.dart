import 'package:cancer/core/networking/dio_service.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/data/repository/auth_repo_impl.dart';
import 'package:cancer/features/auth/presentation/view/widgets/register_first_section.dart';
import 'package:cancer/features/auth/presentation/view/widgets/register_second_section.dart';
import 'package:cancer/features/auth/presentation/view_model/register_cubit/register_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(AuthRepoImpl(DioService(Dio()))),
      child: const Scaffold(
        backgroundColor: AppColors.backColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                RegisterFirstSection(),
                RegisterSecondSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
