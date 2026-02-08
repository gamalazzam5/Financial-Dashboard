import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_button.dart';
import 'package:financial_dashboard/widgets/custom_container.dart';
import 'package:financial_dashboard/widgets/text_field.dart';
import 'package:financial_dashboard/widgets/transactions_items.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  const NewTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'New transaction',
              style: AppStyles.styleSemiBold20(
                context,
              ).copyWith(color: Color(0xFF404040)),
            ),
            SizedBox(height: 14),
            TransactionsItems(),
            SizedBox(height: 14),
            Row(
              children: [
                Expanded(child: CustomTextField()),
                const SizedBox(width: 12),
                CustomButton(
                  text: 'Send the transfer',
                  iconData: Icons.arrow_forward_ios,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
