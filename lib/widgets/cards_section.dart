import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/cloud_cash_with_weekly.dart';
import 'package:financial_dashboard/widgets/custom_container.dart';
import 'package:financial_dashboard/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

import 'balance_section.dart';

class CardsSection extends StatelessWidget {
  const CardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Cards',
              style: AppStyles.styleSemiBold20(
                context,
              ).copyWith(color: const Color(0xFF404040)),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: CloudCashWithWeekly()),
                SizedBox(width: 12),
                Expanded(child: BalanceSection()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
