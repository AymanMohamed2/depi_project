import 'package:cancer/features/auth/presentation/view/register_view.dart';
import 'package:cancer/features/auth/presentation/view/widgets/email_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/login_button.dart';
import 'package:cancer/features/auth/presentation/view/widgets/login_with.dart';
import 'package:cancer/features/auth/presentation/view/widgets/password_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/reminder.dart';
import 'package:cancer/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginSecondSection extends StatefulWidget {
  const LoginSecondSection({super.key});

  @override
  State<LoginSecondSection> createState() => _LoginSecondSectionState();
}

class _LoginSecondSectionState extends State<LoginSecondSection> {
  final formKey = GlobalKey<FormState>();
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          EmailTextField(
            controller: controller,
            onChanged: (data) {
              BlocProvider.of<LoginCubit>(context).email = data;
            },
            validator: (value) {
              return emailValidator(value);
            },
          ),
          const SizedBox(
            height: 15,
          ),
          PasswordTextField(
            controller: controller,
            onChanged: (data) {
              BlocProvider.of<LoginCubit>(context).password = data;
            },
            validator: (value) {
              return passValidator(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          LoginButton(
            controller: controller,
            globalKey: formKey,
          ),
          Reminder(
            question: 'Do Not Have an Account?',
            button: 'Register',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const RegisterView(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const LoginWith(),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  String? passValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Password';
    }

    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Email';
    }
    return null;
  }
}
