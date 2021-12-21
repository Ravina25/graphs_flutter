import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartGraph extends StatefulWidget {
  @override
  _BarChartGraphState createState() => _BarChartGraphState();
}

class _BarChartGraphState extends State<BarChartGraph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bar Chart Graph"),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: BarChart(BarChartData(
            borderData: FlBorderData(
                border: Border(
              top: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide(width: 1),
              bottom: BorderSide(width: 1),
            )),
            groupsSpace: 10,
            barGroups: [
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(y: 10, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(y: 9, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(y: 4, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(y: 2, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 5, barRods: [
                BarChartRodData(y: 13, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 6, barRods: [
                BarChartRodData(y: 17, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 7, barRods: [
                BarChartRodData(y: 19, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 8, barRods: [
                BarChartRodData(y: 21, width: 15, colors: [Colors.amber]),
              ]),
            ])),
      ),
    );
  }
}
