import 'package:financial_dashboard/models/goal_item_model.dart';
import 'package:financial_dashboard/widgets/custom_goal_item.dart';
import 'package:financial_dashboard/widgets/goals_header.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import 'goals_items.dart';
import 'new_transaction.dart';
import 'outcome_statistics.dart';

class GoalsSection extends StatelessWidget {
  const GoalsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 24),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisAlignment: .start,
        children: [
          GoalsHeader(),
          SizedBox(height: 12,),
          GoalsItems(),
          SizedBox(height: 30,),
          OutcomeStatistics(),
          SizedBox(height: 30,),
          NewTransaction()
        ],
      ),
    );
  }
}

