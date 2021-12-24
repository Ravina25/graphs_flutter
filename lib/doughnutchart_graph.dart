import 'package:flutter/material.dart';
import 'package:graphs_flutter/piechart_graph.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChartGraph extends StatefulWidget {
  @override
  _DoughnutChartGraphState createState() => _DoughnutChartGraphState();
}

class _DoughnutChartGraphState extends State<DoughnutChartGraph> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, Color.fromRGBO(9, 0, 136, 1)),
      ChartData('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
      ChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
      ChartData('Others', 52, Color.fromRGBO(255, 189, 57, 1))
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Doughnut Chart Graph"),
      ),
      body: Center(
          child: Container(
              child: SfCircularChart(
                  annotations: <CircularChartAnnotation>[
                    CircularChartAnnotation(
                        widget: Container(
                            child: PhysicalModel(
                                child: Container(),
                                shape: BoxShape.circle,
                                elevation: 10,
                                shadowColor: Colors.black,
                                color: const Color.fromRGBO(
                                    230, 230, 230, 1)))),
                    CircularChartAnnotation(
                        widget: Container(
                            child: const Text('62%',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    fontSize: 25))))
                  ],
                  series: <CircularSeries>[
                    // Renders doughnut chart
                    DoughnutSeries<ChartData, String>(
                        dataSource: chartData,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        radius: '80%',  // Radius of doughnut's inner circle
                      // cornerStyle: CornerStyle.bothCurve)  // Corner style of doughnut segment
                    )
                  ]))),
    );
  }
}

  class ChartData {
  ChartData(this.x, this.y, [this.color]);

  final String x;
  final double y;
  final Color color;
  }
