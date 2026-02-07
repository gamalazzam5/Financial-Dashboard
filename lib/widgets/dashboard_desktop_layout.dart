import 'package:financial_dashboard/widgets/custom_drawer.dart';
import 'package:financial_dashboard/widgets/weekly_sum_up_section.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(59),
        color: Colors.white,
      ),
      child:  Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(flex: 3, child: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(

            child:  WeeklySumUpSection(),
          )
        ]
        )),
        ],
      ),
    );
  }
}
