import 'package:cancer/features/auth/presentation/view/login_view.dart';
import 'package:cancer/features/auth/presentation/view/widgets/confirm_pass_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/email_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/password_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/register_button.dart';
import 'package:cancer/features/auth/presentation/view/widgets/register_with.dart';
import 'package:cancer/features/auth/presentation/view/widgets/reminder.dart';
import 'package:cancer/features/auth/presentation/view/widgets/username_text_field.dart';
import 'package:cancer/features/auth/presentation/view_model/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterSecondSection extends StatefulWidget {
  const RegisterSecondSection({super.key});

  @override
  State<RegisterSecondSection> createState() => _RegisterSecondSectionState();
}

class _RegisterSecondSectionState extends State<RegisterSecondSection> {
  final formKey = GlobalKey<FormState>();
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          UserNameTextField(
            onChanged: (data) {
              BlocProvider.of<RegisterCubit>(context).userName = data;
            },
            controller: controller,
          ),
          const SizedBox(
            height: 15,
          ),
          EmailTextField(
            onChanged: (data) {
              BlocProvider.of<RegisterCubit>(context).email = data;
            },
            controller: controller,
            validator: (value) {
              return emailValidator(value);
            },
          ),
          const SizedBox(
            height: 15,
          ),
          PasswordTextField(
            onChanged: (data) {
              BlocProvider.of<RegisterCubit>(context).password = data;
            },
            controller: controller,
            validator: (value) {
              return passValidator(value);
            },
          ),
          const SizedBox(
            height: 15,
          ),
          ConfirmPassTextField(
            onChanged: (data) {
              BlocProvider.of<RegisterCubit>(context).confirmPassword = data;
            },
            controller: controller,
            validator: (value) {
              return confirmPassValidator(value, context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          RegisterButton(
            controller: controller,
            globalKey: formKey,
          ),
          const SizedBox(
            height: 4,
          ),
          Reminder(
            question: 'Already Have an Account?',
            button: 'Login',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const LoginView(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const RegisterWith(),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  String? confirmPassValidator(String? value, BuildContext context) {
    String? password = BlocProvider.of<RegisterCubit>(context).password;
    if (value == null || value.isEmpty) {
      return 'Please enter the Password to confirm';
    } else if (value != password) {
      return 'Not Matching password';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Email';
    } else if (RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value)) {
      return null;
    }
    return 'Invalid Email';
  }

  String? passValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Password';
    }
    if (value.length < 9) {
      return 'The minimum password length is 9';
    } else if (RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value)) {
      return null;
    }
    return 'Your password must contains Uppercase,\nLowercase, Special characters and Numbers';
  }
}
