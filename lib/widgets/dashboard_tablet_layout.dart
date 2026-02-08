import 'package:financial_dashboard/widgets/weekly_sum_up_section.dart';
import 'package:financial_dashboard/widgets/weekly_sum_up_tablet.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(59),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(
            flex: 4,
            child: CustomScrollView(
              slivers: [SliverToBoxAdapter(child: WeeklySumUpTablet())],
            ),
          ),
        ],
      ),
    );
  }
}
