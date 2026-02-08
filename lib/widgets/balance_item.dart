import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BalanceItem extends StatelessWidget {
  const BalanceItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.color,
  });

  final String title;
  final String subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FittedBox(

         fit: .scaleDown,
          child: Text(
            title,
            style: AppStyles.styleBold18(context)
                .copyWith(color: color, fontSize: 24),
          ),
        ),
        const SizedBox(height: 4),
        FittedBox(
          fit: .scaleDown,
          child: Text(
            subTitle,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xFFAEAEAE)),
          ),
        ),
      ],
    );
  }
}
