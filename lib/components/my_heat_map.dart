import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final DateTime? startDate;
  const MyHeatMap({super.key, required this.startDate, required this.datasets});

  @override
  Widget build(BuildContext context) {
    return HeatMap(
        startDate: startDate,
        endDate: DateTime.now(),
        datasets: datasets,
        defaultColor: Theme.of(context).colorScheme.secondary,
        textColor: Colors.white,
        colorMode: ColorMode.color,
        showText: true,
        scrollable: true,
        showColorTip: false,
        colorsets: {
          1: Colors.green.shade200,
          2: Colors.green.shade300,
          3: Colors.green.shade400,
          4: Colors.green.shade500,
          5: Colors.green.shade600,
        });
  }
}
