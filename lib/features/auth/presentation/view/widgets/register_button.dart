import 'package:cancer/core/helper/snake_bar.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/widgets/custom_loading_indicator.dart';
import 'package:cancer/features/auth/presentation/view_model/register_cubit/register_cubit.dart';
import 'package:cancer/features/auth/presentation/view_model/register_cubit/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login_view.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.globalKey,
    required this.controller,
  });

  final GlobalKey<FormState> globalKey;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterStateFailure) {
          customSnakeBar(context, text: state.errMessage);
        } else if (state is RegisterStateSuccess) {
          navToLogin(context);
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              backgroundColor: AppColors.primary,
            ),
            onPressed: (state is RegisterStateLoading)
                ? () {}
                : () async {
                    if (globalKey.currentState!.validate()) {
                      await BlocProvider.of<RegisterCubit>(context).register();
                      controller?.clear();
                    }
                  },
            child: (state is RegisterStateLoading)
                ? const CustomLoadingIndicator()
                : const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        );
      },
    );
  }

  void navToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const LoginView(),
      ),
    );
  }
}
