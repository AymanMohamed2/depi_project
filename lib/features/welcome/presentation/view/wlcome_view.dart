import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/welcome/presentation/view/widgets/custom_login_button.dart';
import 'package:cancer/features/welcome/presentation/view/widgets/custom_regester_button.dart';
import 'package:cancer/features/welcome/presentation/view/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 130,
            ),
            AspectRatio(
                aspectRatio: 10 / 7,
                child: Image.asset('assets/images/5911096.png')),
            const SizedBox(
              height: 20,
            ),
            const WelcomeText(),
            const SizedBox(
              height: 40,
            ),
            const CustomLoginButton(),
            const SizedBox(
              height: 13,
            ),
            const CustomRegeterButton(),
          ],
        ),
      ),
    );
  }
}
