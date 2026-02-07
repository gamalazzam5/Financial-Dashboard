import 'package:financial_dashboard/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_desktop_layout.dart';

class FinancialView extends StatelessWidget {
  const FinancialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardDesktopLayout(),
        tabletLayout: (context) => DashboardDesktopLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
