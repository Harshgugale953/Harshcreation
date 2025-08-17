import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SensorChart extends StatelessWidget {
	const SensorChart({super.key});

	@override
	Widget build(BuildContext context) {
		return SizedBox(
			height: 200,
			child: LineChart(
				LineChartData(
					lineBarsData: [
						LineChartBarData(
							spots: const [
								FlSpot(0, 0),
								FlSpot(1, 1.2),
								FlSpot(2, 0.8),
								FlSpot(3, 1.6),
							],
							isCurved: true,
						),
					],
				),
			),
		);
	}
}