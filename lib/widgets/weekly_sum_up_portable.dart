import 'package:financial_dashboard/widgets/weekly_sum_up_header.dart';
import 'package:flutter/material.dart';

import 'card_section_with_transaction_history.dart';
import 'goals_section.dart';

class WeeklySumUpPortable extends StatelessWidget {
  const WeeklySumUpPortable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          WeeklySumUpHeader(),
          SizedBox(height: 40,),
          CardSectionWithTransactionHistory(),
          SizedBox(height: 30,),
          GoalsSection()
        ],
      ),
    );
  }
}
