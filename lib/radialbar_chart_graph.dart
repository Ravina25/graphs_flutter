import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'doughnutchart_graph.dart';

class RadialBarChartGraph extends StatefulWidget {
  @override
  _RadialBarChartGraphState createState() => _RadialBarChartGraphState();
}

class _RadialBarChartGraphState extends State<RadialBarChartGraph> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Low', 3500, const Color.fromRGBO(235, 97, 143, 1)),
      ChartData('Average', 7200, const Color.fromRGBO(145, 132, 202, 1)),
      ChartData('High', 10500, const Color.fromRGBO(69, 187, 161, 1)),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Radial Bar Chart Graph"),
        ),
        body: Center(
            child: Container(
                child:
                    SfCircularChart(series: <CircularSeries<ChartData, String>>[
          // Renders radial bar chart
          RadialBarSeries<ChartData, String>(
              dataLabelSettings: DataLabelSettings(
                  // Renders the data label
                  isVisible: true),
              maximumValue: 6000,
              radius: '70%',
              // Radius of the radial bar
              innerRadius: '40%',
              // Radius of the radial bar's inner circle
              gap: '5%',
              dataSource: chartData,
              cornerStyle: CornerStyle.bothCurve,
              // Corner style of radial bar segment
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              pointColorMapper: (ChartData data, _) => data.color),
        ])))
    );
  }
}
