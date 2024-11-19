import 'package:flutter/material.dart';

class InActiveGemini extends StatelessWidget {
  const InActiveGemini({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Image.asset(
          'assets/images/simulation.png',
          height: 230,
        ),
        const Text(
          'Talk to activate\nAMNA',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
