import 'package:fl_chart/fl_chart.dart';
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Icon(
                            WeatherIcons.snow,
                            size: 50.0,
                            color: Colors.blue,
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
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, right: 10.0),
                    child: LineChart(
                      sampleData1(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

LineChartData sampleData1() {
  return LineChartData(
    lineTouchData: LineTouchData(
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
      ),
      touchCallback: (LineTouchResponse touchResponse) {},
      handleBuiltInTouches: true,
    ),
    gridData: FlGridData(
      show: false,
    ),
    titlesData: FlTitlesData(
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        textStyle: const TextStyle(
          color: Color(0xff72719b),
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        margin: 10,
        getTitles: (value) {
          switch (value.toInt()) {
            case 2:
              return 'SEPT';
            case 7:
              return 'OCT';
            case 12:
              return 'DEC';
          }
          return '';
        },
      ),
      leftTitles: SideTitles(
        showTitles: true,
        textStyle: const TextStyle(
          color: Color(0xff75729e),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '1m';
            case 2:
              return '2m';
            case 3:
              return '3m';
            case 4:
              return '5m';
          }
          return '';
        },
        margin: 8,
        reservedSize: 30,
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(
          color: Color(0xff4e4965),
          width: 4,
        ),
        left: BorderSide(
          color: Colors.blue,
        ),
        right: BorderSide(
          color: Colors.transparent,
        ),
        top: BorderSide(
          color: Colors.transparent,
        ),
      ),
    ),
    minX: 0,
    maxX: 14,
    maxY: 4,
    minY: 0,
    lineBarsData: linesBarData1(),
  );
}

List<LineChartBarData> linesBarData1() {
  final LineChartBarData lineChartBarData1 = LineChartBarData(
    spots: [
      FlSpot(1, 1),
      FlSpot(3, 1.5),
      FlSpot(5, 1.4),
      FlSpot(7, 3.4),
      FlSpot(10, 2),
      FlSpot(12, 2.2),
      FlSpot(14, 1.8),
    ],
    isCurved: true,
    colors: [
      Colors.blue,
    ],
    barWidth: 6,
    isStrokeCapRound: true,
    dotData: FlDotData(
      show: false,
    ),
    belowBarData: BarAreaData(
      show: false,
    ),
  );
  return [
    lineChartBarData1,
  ];
}
