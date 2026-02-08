import 'package:flutter/cupertino.dart';

import '../generated/assets.dart';
import '../models/goal_item_model.dart';
import 'custom_goal_item.dart';

class GoalsItems extends StatelessWidget {
  const GoalsItems({super.key});

  static final List<GoalItemModel> items = [
    GoalItemModel(
      amount: '\$550',
      date: '12/20/20',
      goal: 'Holidays',
      image: Assets.imagesHoliday,
    ),
    const GoalItemModel(
      amount: '\$200',
      date: '12/20/20',
      goal: 'Renovation',
      image: Assets.imagesRenovation,
    ),
    const GoalItemModel(
      amount: '\$820',
      date: '12/20/20',
      goal: 'Xbox',
      image: Assets.imagesXbox,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        items.length,
        (index) => Expanded(
          child: Padding(
            padding: .only(right: 16),
            child: CustomGoalItem(goalItemModel: items[index]),
          ),
        ),
      ),
    );
  }
}
