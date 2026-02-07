import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class WeeklyPaymentLimitDesign extends StatelessWidget {
  const WeeklyPaymentLimitDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  height: 8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE6E6E6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Container(
                  height: 8,
                  width: constraints.maxWidth * 0.25,
                  decoration: BoxDecoration(
                    color: const Color(0xFF197BBD),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Weekly payment limit',
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFAEAEAE)),
            ),
            Text(
              '\$350.60 / \$4000',
              style: AppStyles.styleSemiBold16(context).copyWith(color: const Color(0xFF404040)),
            ),
          ],
        ),
      ],
    );
  }
}
