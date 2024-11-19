import 'package:cancer/core/helper/shared_prefs.dart';
import 'package:cancer/core/helper/snake_bar.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:cancer/features/auth/presentation/view_model/login_cubit/login_states.dart';
import 'package:cancer/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key, required this.globalKey, required this.controller});

  final GlobalKey<FormState> globalKey;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginFailureState) {
          customSnakeBar(context, text: state.errMessage);
        } else if (state is LoginSuccessState) {
          SharedPrefs.prefs!.setBool('isLogin', true);
          navToHome(context);
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
            onPressed: (state is LoginLoadinglState)
                ? () {}
                : () async {
                    if (globalKey.currentState!.validate()) {
                      await BlocProvider.of<LoginCubit>(context).login();
                      controller?.clear();
                    }
                  },
            child: (state is LoginLoadinglState)
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: AppColors.backColor,
                    ),
                  )
                : const Text(
                    'Login',
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

  void navToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const HomeView(),
      ),
    );
  }
}
