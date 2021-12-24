import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartGraph extends StatefulWidget {
  @override
  _PieChartGraphState createState() => _PieChartGraphState();
}

class _PieChartGraphState extends State<PieChartGraph> {
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25),
      ChartData('Steve', 38),
      ChartData('Jack', 34),
      ChartData('Others', 52)
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Pie Chart Graph"),
        ),
        body: Center(
            child: Container(
                child: SfCircularChart(
                    // title: ChartTitle(text: 'Half yearly sales analysis'),
                    legend: Legend(isVisible: true), // Enables the legend
                    tooltipBehavior: _tooltipBehavior,  // Enables the tooltip for all the series in chart
                    series: <CircularSeries>[
              // Render pie chart
              PieSeries<ChartData, String>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  dataLabelSettings: DataLabelSettings(
                      isVisible: true) // Render the data label
                  )
            ]))));
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);

  final String x;
  final double y;
  final Color color;
}
