import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/out_come_item_model.dart';
import '../utils/app_styles.dart';
import 'out_come_progress_bar.dart';

class OutcomeStatItem extends StatelessWidget {
  const OutcomeStatItem({super.key, required this.model});

  final OutComeItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: model.containerColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: SvgPicture.asset(
            model.image,
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
              model.progressColor,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),

      title: OutcomeProgressBar(
        color: model.progressColor,
        percent: model.percent,
      ),

      subtitle: Text(
        model.subTitle,
        style: AppStyles.styleRegular14(context)
            .copyWith(color: const Color(0xFFAEAEAE)),
      ),

      trailing: Text(
        '${(model.percent * 100).toInt()}%',
        style: AppStyles.styleSemiBold24(context)
            .copyWith(color: const Color(0xFF696969)),
      ),
    );
  }
}
