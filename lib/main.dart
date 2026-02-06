import 'package:financial_dashboard/views/financial_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinancialDashboard());
}


class FinancialDashboard extends StatelessWidget {
  const FinancialDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FinancialView(),
    );
  }
}
