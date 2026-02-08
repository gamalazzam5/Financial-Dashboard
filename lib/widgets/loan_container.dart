import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../generated/assets.dart';

class LoanContainer extends StatelessWidget {
  const LoanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFd95c45),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 130),
            child: SvgPicture.asset(Assets.imagesLoanEffect),
          ),
          Padding(
            padding: .only(left: 16, bottom: 8),

            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  'Get great',
                  style: AppStyles.styleSemiBold20(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      'Loan!',
                      style: AppStyles.styleSemiBold20(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.white,size: 18,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
