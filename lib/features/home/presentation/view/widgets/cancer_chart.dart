import 'package:cancer/core/utils/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({
    super.key,
    required this.firstValue,
    required this.secondValue,
    required this.firstTilte,
    required this.secondTilte,
  });

  final double firstValue;
  final double secondValue;
  final String firstTilte;
  final String secondTilte;

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  int isActive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          isActive =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: widget.firstTilte,
          titleStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          radius: isActive == 0 ? 40 : 30,
          showTitle: true,
          value: widget.firstValue,
          color: AppColors.primary,
        ),
        PieChartSectionData(
          title: widget.secondTilte,
          titleStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
          radius: isActive == 1 ? 40 : 30,
          showTitle: true,
          value: widget.secondValue,
          color: const Color.fromARGB(255, 217, 215, 205),
        ),
      ],
    );
  }
}
