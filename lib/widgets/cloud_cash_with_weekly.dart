import 'package:financial_dashboard/widgets/weekly_payment_limit.dart';
import 'package:flutter/material.dart';

import 'cloud_cash_container.dart';

class CloudCashWithWeekly extends StatelessWidget {
  const CloudCashWithWeekly({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CloudCashContainer(),
        SizedBox(height: 30,),
        WeeklyPaymentLimitDesign()
      ],
    );
  }
}
