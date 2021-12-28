import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartGraph extends StatefulWidget {
  @override
  _LineChartGraphState createState() => _LineChartGraphState();
}

class _LineChartGraphState extends State<LineChartGraph> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData("2010", 35),
      SalesData("2011", 28),
      SalesData("2012", 34),
      SalesData("2013", 32),
      SalesData("2014", 40)
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Line Chart Graph"),
        ),
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries>[
          // Renders line chart
          LineSeries<SalesData, String>(
              dataSource: chartData,
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales)
        ]))));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
