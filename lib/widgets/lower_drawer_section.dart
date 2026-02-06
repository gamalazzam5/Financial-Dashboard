import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../generated/assets.dart';

class LowerDrawerSection extends StatelessWidget {
  const LowerDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .center,
        children: [
          Expanded(child: SizedBox(height: 20)),

          SvgPicture.asset(Assets.imagesSpaceCloud),
          const SizedBox(height: 8),
          Text(
            'Give your money\n awesome space in cloud',
            textAlign: TextAlign.center,
            style: AppStyles.styleRegular12(
              context,
            ).copyWith(color: const Color(0xFF404040)),
          ),
          SizedBox(height: 8),
          CustomButton(
            text: 'Upgrade to premium',
            iconData: Icons.arrow_upward,
          ),
        ],
      ),
    );
  }
}
