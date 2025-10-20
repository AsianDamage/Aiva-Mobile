import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

import '/widgets/navbar.dart';

class TrendsWidget extends StatelessWidget {
  const TrendsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              NavBarWidget(), // no model needed
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Progress Title
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Your Progress',
                          style: GoogleFonts.openSans(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF27567D),
                          ),
                        ),
                      ),
                      // Current / Longest streak
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Current Streak',
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF5D82A2),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 4),
                                  Text(
                                    '7',
                                    style: GoogleFonts.openSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF27567D),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'Days',
                                    style: GoogleFonts.openSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF27567D),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Longest Streak',
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF5D82A2),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 4),
                                  Text(
                                    '21',
                                    style: GoogleFonts.openSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF27567D),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'Days',
                                    style: GoogleFonts.openSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF27567D),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      // Chart
                      Container(
                        height: 230,
                        child: LineChart(
                          LineChartData(
                            lineBarsData: [
                              LineChartBarData(
                                spots: [], // put your x/y data here
                                isCurved: true,
                                barWidth: 2,
                                color: Color(0xFF27567D),
                                dotData: FlDotData(show: false),
                                belowBarData: BarAreaData(
                                  show: true,
                                  color: Color(0xFFB3CDE0).withOpacity(0.5),
                                ),
                              ),
                            ],
                            titlesData: FlTitlesData(
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(reservedSize: 40),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(reservedSize: 32),
                              ),
                            ),
                            gridData: FlGridData(show: false),
                            borderData: FlBorderData(show: false),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
