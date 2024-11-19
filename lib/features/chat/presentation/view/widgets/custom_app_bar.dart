import 'package:cancer/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
        const Spacer(
          flex: 5,
        ),
        Image.asset(
          Assets.amnaLogo,
          height: 40,
        ),
        const Spacer(
          flex: 7,
        ),
      ],
    );
  }
}
