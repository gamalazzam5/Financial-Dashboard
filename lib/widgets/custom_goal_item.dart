import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/goal_item_model.dart';
import '../utils/app_styles.dart';
import 'custom_container.dart';

class CustomGoalItem extends StatelessWidget {
  const CustomGoalItem({super.key, required this.goalItemModel});

  final GoalItemModel goalItemModel;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: const EdgeInsets.only(left: 24,top: 14),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            // amount
            Text(
              goalItemModel.amount,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: const Color(0xFF696969)),
            ),
            const SizedBox(height: 4),

            // date
            Text(
              goalItemModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFAEAEAE)),
            ),

            const SizedBox(height: 16),

            // icon
            SvgPicture.asset(
              goalItemModel.image,

            ),

            const SizedBox(height: 8),

            // goal
            FittedBox(
              fit: .scaleDown,
              child: Text(
                goalItemModel.goal,
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: const Color(0xFF404040), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
