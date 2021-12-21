import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartGraph extends StatefulWidget {
  @override
  _BarChartGraphState createState() => _BarChartGraphState();
}

class _BarChartGraphState extends State<BarChartGraph> {
  @override
  Widget build(BuildContext context) {
    return BarChart(
        BarChartData()
    );
  }
}
