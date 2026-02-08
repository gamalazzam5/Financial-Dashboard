import 'package:financial_dashboard/widgets/goals_header.dart';
import 'package:flutter/material.dart';
import 'goals_items.dart';
import 'loan_container.dart';
import 'new_transaction.dart';
import 'outcome_statistics.dart';

class GoalsSection extends StatelessWidget {
  const GoalsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 600;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Column(

        crossAxisAlignment: .start,
        mainAxisAlignment: .start,
        children: [
          GoalsHeader(),
          SizedBox(height: 12),
          GoalsItems(),
          SizedBox(height: 30),
          OutcomeStatistics(),
          SizedBox(height: 30),
          isMobile
              ? Column(
            children: [
              NewTransaction(),
              const SizedBox(height: 16),
              LoanContainer(),
            ],
          )
              : Row(
            children: [
              Expanded(flex: 2, child: NewTransaction()),
              const SizedBox(width: 12),
              Expanded(child: LoanContainer()),
            ],
          ),
        ],
      ),
    );
  }
}
