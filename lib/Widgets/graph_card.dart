import 'package:crypto_wallet/Views/views.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GraphCard extends StatelessWidget {
  const GraphCard({
    Key? key,
    required this.screenSize,
    required this.gradientColors,
    required this.widget,
  }) : super(key: key);

  final Size screenSize;
  final List<Color> gradientColors;
  final WalletsDetails widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          width: screenSize.width,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 5,
                minY: 0,
                maxY: 6,
                titlesData: FlTitlesData(
                  show: false,
                ),
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    isStepLineChart: false,
                    dotData: FlDotData(
                      show: false,
                    ),
                    colors: gradientColors,
                    belowBarData: BarAreaData(
                      show: true,
                      colors: gradientColors
                          .map((color) => color.withOpacity(0.3))
                          .toList(),
                    ),
                    spots: [
                      FlSpot(0, 2),
                      FlSpot(0.5, 3),
                      FlSpot(1.5, 2.8),
                      FlSpot(2.5, 4),
                      FlSpot(3, 4.2),
                      FlSpot(4, 3.5),
                      FlSpot(4.5, 3.2),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.02),
                  Text(
                    "Lower:\$4.895",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFaeb8c4),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.02),
                  Text(
                    "Higher:\$4.895",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFaeb8c4),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Row(
            children: [
              Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xffff8f17),
                      const Color(0xffffc743),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: screenSize.width * 0.02),
              Text(
                "1 " +
                    widget.walletModel!.code! +
                    " = " +
                    "\$${widget.walletModel!.perPrice}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4c5867),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
