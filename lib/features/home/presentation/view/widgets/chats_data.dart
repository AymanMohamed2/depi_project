import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/home/presentation/view/widgets/cancer_chart.dart';
import 'package:flutter/material.dart';

class ChartsData extends StatelessWidget {
  const ChartsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 3,
                ),
                const Chart(
                  firstTilte: '25%',
                  secondTilte: '75%',
                  firstValue: 25,
                  secondValue: 75,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    textAlign: TextAlign.center,
                    'When caught at advanced stage.',
                    style: AppStyles.mediam16(context),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Chart(
                  firstTilte: '98%',
                  secondTilte: '2%',
                  firstValue: 92,
                  secondValue: 7,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    textAlign: TextAlign.center,
                    'When caught early.',
                    style: AppStyles.mediam16(context),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
