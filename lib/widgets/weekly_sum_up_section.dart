import 'package:financial_dashboard/widgets/card_section_with_transaction_history.dart';
import 'package:financial_dashboard/widgets/cards_section.dart';
import 'package:financial_dashboard/widgets/goals_section.dart';
import 'package:financial_dashboard/widgets/transaction_history_section.dart';
import 'package:financial_dashboard/widgets/weekly_sum_up_header.dart';
import 'package:flutter/material.dart';

class WeeklySumUpSection extends StatelessWidget {
  const WeeklySumUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: .start,
      children: [
        WeeklySumUpHeader(),
      SizedBox(height: 40,),
      Row(
        crossAxisAlignment: .start,
        children: [
          Expanded(child: CardSectionWithTransactionHistory()),
         
          Expanded(child: GoalsSection())
        ],
      )
      ],
      ),
    );
  }
}
