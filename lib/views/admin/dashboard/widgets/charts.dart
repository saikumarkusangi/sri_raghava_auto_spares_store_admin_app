import 'package:flutter/cupertino.dart';
import 'package:manage_store/themes/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  Chart({super.key});

  final List<OrdersData> data = [
    OrdersData('Jan', 12),
    OrdersData('Feb', 6),
    OrdersData('Mar', 32),
    OrdersData('Apr', 2)
  ];

  @override
  Widget build(BuildContext context) {
    return  SfCartesianChart(
     
      primaryXAxis: CategoryAxis(),
      title: ChartTitle(text: "Total Orders"),
      legend: Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(
        borderColor: primaryColor,
        enable: true),
      series: <ChartSeries<OrdersData,String>>[
        LineSeries<OrdersData,String>(
          dataSource: data,
           xValueMapper: (OrdersData data,_)=>data.month,
            yValueMapper: (OrdersData data,_)=>data.orders,
            )
      ],
    );
  }
}

class OrdersData {
  final String month;
  final double orders;

  OrdersData(this.month, this.orders);
}
