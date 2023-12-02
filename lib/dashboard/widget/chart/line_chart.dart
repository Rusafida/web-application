import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartLine extends StatelessWidget {
  const ChartLine({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0, 
        maxX: 10,
         minY: 0, 
         maxY: 10,
        //  gridData: FlGridData(
        //   show: true,
        //   // getDrawingHorizontalLine: (value){
        //   //   return FlLine(
        //   //     color: Colors.black,
        //   //     strokeWidth: 1,
        //   //   );
        //  // }
        //  ),
         lineBarsData: [
        LineChartBarData(
          spots: [
            const FlSpot(0, 2),
            const FlSpot(2, 3),
            const FlSpot(3, 6.3),
           const FlSpot(5, 8.9),         
            const FlSpot(8, 7),
            const FlSpot(9, 9),

          ],
          isCurved: true,
          color: Colors.black,
          barWidth: 4,
        ),
      ]),
    );
  }
}
