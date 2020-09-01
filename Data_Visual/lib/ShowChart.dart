import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:convert';

class ShowChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    
    TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        title: Text('Line Chart'),),
       body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/stock_market_data.json'),
          builder: (context, snapshot) {
            var myData = jsonDecode(snapshot.data.toString());
            
      return new LineChart(
        LineChartData(
          lineTouchData: LineTouchData(enabled: true),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 1),
                FlSpot(2, 3),
                FlSpot(3, 3),
                FlSpot(4, 5),
                FlSpot(4, 4)
              ],
              isCurved: false,
              barWidth: 1,
              colors: [
                Colors.black,
              ],
              belowBarData: BarAreaData(
                show: true,
                colors: [Colors.lightGreen.withOpacity(0.4)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              aboveBarData: BarAreaData(
                show: true,
                colors: [Colors.red.withOpacity(0.6)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              dotData: FlDotData(
                show: true,
              ),
            ),
          ],
          minY: 0,
         ),
        );
       }
      )
     )
    );
  }
}
