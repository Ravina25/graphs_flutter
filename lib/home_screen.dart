import 'package:flutter/material.dart';
import 'package:graphs_flutter/linechart_graph.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlatButton(
            child: Text(
              'Pie Chart',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              'Line Chart',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LineChartGraph()));
            },
          ),
          FlatButton(
            child: Text(
              'Bar Chart',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              'Scatter Chart',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
