
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/utils/style_management.dart';

class LineChartContent extends StatelessWidget {

  List<LineChartBarData> lineChartBarData = [
    LineChartBarData(
        color: Colors.white,
        isCurved: true,
        spots: [
          const FlSpot(1, 200),
          const FlSpot(2, 120),
          const FlSpot(3, 190),
          const FlSpot(4, 210),
          const FlSpot(5, 160),
          const FlSpot(6, 150),
          const FlSpot(7, 180)
        ]
    )
  ];


  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 1,
        maxX: 7,
        minY: 0,
        maxY: 250,
        lineBarsData: lineChartBarData,
        borderData: FlBorderData(
            border: const Border.symmetric(horizontal: BorderSide(color: Colors.white))
        ),
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: true,
          getDrawingHorizontalLine: (double value) {
            return FlLine(
              color: Colors.white,
              strokeWidth: 1,
            );
          }
        ),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(
            drawBehindEverything: false,
          ),
          rightTitles: AxisTitles(
            drawBehindEverything: false,
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
                getTitlesWidget: (double value, TitleMeta meta) {
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      meta.formattedValue,
                      style: StyleManagement.testStyleWhite12,
                    ),
                  );
                }
            )
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 25,
              getTitlesWidget: (double value, TitleMeta meta) {
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  child: Text(
                    meta.formattedValue == "1" ? "Mon" :
                    meta.formattedValue == "2" ? "Tue" :
                    meta.formattedValue == "3" ? "Wed" :
                    meta.formattedValue == "4" ? "Thu" :
                    meta.formattedValue == "5" ? "Fri" :
                    meta.formattedValue == "6" ? "Sat" :
                    meta.formattedValue == "7" ? "Sun" : "over",
                    style: StyleManagement.testStyleWhite12,
                  ),
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}