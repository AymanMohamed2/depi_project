import 'package:cancer/features/recorder/presentation/view/widgets/animated_mic_bloc_builder.dart';
import 'package:cancer/features/recorder/presentation/view/widgets/lottie_animation_builder.dart';
import 'package:flutter/material.dart';

class RecorderViewBody extends StatelessWidget {
  const RecorderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 12),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
          ),
          const LottieAnimationBuilder(),
          const Spacer(),
          const AnimatedMicBlocBuilder(),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
