import 'package:financial_dashboard/models/goal_item_model.dart';
import 'package:financial_dashboard/widgets/custom_goal_item.dart';
import 'package:financial_dashboard/widgets/goals_header.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

class GoalsSection extends StatelessWidget {
  const GoalsSection({super.key});
static const List<GoalItemModel> items = [
  GoalItemModel(amount: '\$550', date: '12/20/20', goal: 'Holidays', image: Assets.imagesHoliday),
  GoalItemModel(amount: '\$200', date: '12/20/20', goal: 'Renovation', image: Assets.imagesRenovation),
  GoalItemModel(amount: '\$820', date: '12/20/20', goal: 'Xbox', image: Assets.imagesXbox),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 24),
      child: Column(
        mainAxisAlignment: .start,
        children: [
          GoalsHeader(),
          SizedBox(height: 12,),
          Row(
          children: List.generate(items.length, (index) => Expanded(child: Padding(
              padding: .only(right: 16),
              child: CustomGoalItem(goalItemModel: items[index]))))
            ,
          )
        ],
      ),
    );
  }
}
