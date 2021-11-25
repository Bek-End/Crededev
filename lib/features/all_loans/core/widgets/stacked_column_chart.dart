import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(
    this.x,
    this.y1,
    this.y2,
    this.y3,
  );
  final String x;
  final int y1;
  final int y2;
  final int y3;
}

class StackedColumnChart extends StatefulWidget {
  final List<ChartData> chartData;
  final TooltipBehavior tooltipBehavior;
  const StackedColumnChart({
    Key? key,
    required this.chartData,
    required this.tooltipBehavior,
  }) : super(key: key);

  @override
  State<StackedColumnChart> createState() => _StackedColumnChartState();
}

class _StackedColumnChartState extends State<StackedColumnChart> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      tooltipBehavior: widget.tooltipBehavior,
      margin: EdgeInsets.zero,
      primaryXAxis: CategoryAxis(
        isVisible: true,
        majorGridLines: const MajorGridLines(
          width: 0,
        ),
        majorTickLines: const MajorTickLines(
          width: 0,
        ),
        axisLine: const AxisLine(
          width: 0,
        ),
      ),
      primaryYAxis: NumericAxis(
        isVisible: false,
      ),
      series: <ChartSeries>[
        StackedColumn100Series<ChartData, String>(
          dataSource: widget.chartData,
          xValueMapper: (ChartData sales, _) => sales.x,
          yValueMapper: (ChartData sales, _) => sales.y1,
          color: kViolet,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(3),
            bottomRight: Radius.circular(3),
          ),
          spacing: 0.2,
          width: 0.5,
          enableTooltip: true,
        ),
        StackedColumn100Series<ChartData, String>(
          dataSource: widget.chartData,
          xValueMapper: (ChartData sales, _) => sales.x,
          yValueMapper: (ChartData sales, _) => sales.y2,
          color: kDarkBlue,
          spacing: 0.2,
          width: 0.5,
          enableTooltip: true,
        ),
        StackedColumn100Series<ChartData, String>(
          dataSource: widget.chartData,
          xValueMapper: (ChartData sales, _) => sales.x,
          yValueMapper: (ChartData sales, _) => sales.y3,
          color: kChartBlue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
          spacing: 0.2,
          width: 0.5,
          enableTooltip: true,
        ),
      ],
    );
  }
}
