import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:bezier_chart/bezier_chart.dart';

class WeatherSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Icon(
                            WeatherIcons.snow,
                            size: 50.0,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '-1\u00b0 Celcius',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 2, child: sample1(context)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget sample1(BuildContext context) {
  return Center(
    child: Container(
      color: Colors.black87,
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width * 0.9,
      child: BezierChart(
        bezierChartScale: BezierChartScale.CUSTOM,
        xAxisCustomValues: const [
          0,
          5,
          10,
          15,
          20,
          25,
          30,
          35,
          45,
          55,
          65,
          75,
          85,
          95,
        ],
        series: const [
          BezierLine(
            data: const [
              DataPoint<double>(value: 10, xAxis: 0),
              DataPoint<double>(value: 130, xAxis: 5),
              DataPoint<double>(value: 50, xAxis: 10),
              DataPoint<double>(value: 150, xAxis: 15),
              DataPoint<double>(value: 75, xAxis: 20),
              DataPoint<double>(value: 0, xAxis: 25),
              DataPoint<double>(value: 5, xAxis: 30),
              DataPoint<double>(value: 100, xAxis: 35),
              DataPoint<double>(value: 98, xAxis: 45),
              DataPoint<double>(value: 98, xAxis: 55),
              DataPoint<double>(value: 45, xAxis: 65),
              DataPoint<double>(value: 41, xAxis: 75),
              DataPoint<double>(value: 0, xAxis: 85),
              DataPoint<double>(value: 15, xAxis: 95),
            ],
          ),
        ],
        config: BezierChartConfig(
          verticalIndicatorStrokeWidth: 3.0,
          verticalIndicatorColor: Colors.black26,
          showVerticalIndicator: true,
          backgroundColor: Colors.black87,
          snap: false,
          bubbleIndicatorColor: Colors.red,
          displayLinesXAxis: true,
          displayYAxis: true,
          xLinesColor: Colors.deepOrange,
          updatePositionOnTap: true,
        ),
      ),
    ),
  );
}
