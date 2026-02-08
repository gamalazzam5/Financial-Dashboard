import 'package:financial_dashboard/models/out_come_item_model.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../generated/assets.dart';
import 'out_come_progress_bar.dart';
import 'out_come_stat_item.dart';

class OutcomeStatistics extends StatelessWidget {
  const OutcomeStatistics({super.key});
 static final List<OutComeItemModel> items = [
   OutComeItemModel(progressColor: const Color(0xFFF79042), containerColor: const Color(0xFFFFEADA), percent: .52, subTitle: 'Shopping', image: Assets.imagesCard),
   OutComeItemModel(progressColor: const Color(0xFF209D43), containerColor: const Color(0xFFDDF9E4), percent: .21, subTitle: 'Electronics', image: Assets.imagesVan),
   OutComeItemModel(progressColor: const Color(0xFF70A6E8), containerColor: const Color(0xFFE4F0FF), percent: .74, subTitle: 'Travels', image: Assets.imagesTravel),

   
 ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          'Outcome Statistics',
          style: AppStyles.styleSemiBold20(
            context,
          ).copyWith(color: const Color(0xFF404040)),
        ),
        ...List.generate(items.length, (index)=> OutcomeStatItem(model: items[index],))
      ],
    );
  }
}
