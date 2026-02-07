import 'package:financial_dashboard/widgets/transaction_header.dart';
import 'package:financial_dashboard/widgets/transaction_row_item.dart';
import 'package:flutter/material.dart';

import '../models/transaction_model.dart';
import '../utils/app_styles.dart';
import 'custom_container.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  static const List<TransactionModel> transactions = [
    TransactionModel(
      icon: Icons.shopping_cart_outlined,
      receiver: 'Tesco Market',
      type: 'Shopping',
      date: '13 Dec 2020',
      amount: r'$75.67',
    ),
    TransactionModel(
      icon: Icons.local_shipping_outlined,
      receiver: 'ElectroMen Market',
      type: 'Shopping',
      date: '14 Dec 2020',
      amount: r'$250.00',
    ),
    TransactionModel(
      icon: Icons.restaurant_outlined,
      receiver: 'Fiorgio Restaurant',
      type: 'Food',
      date: '07 Dec 2020',
      amount: r'$19.50',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transaction history',
              style: AppStyles.styleSemiBold20(context)
                  .copyWith(color: const Color(0xFF404040)),
            ),

            const SizedBox(height: 16),
           TransactionHeaderRow(),
            ...List.generate(
              transactions.length,
                  (index) {
                return Column(
                  children: [
                    TransactionRowItem(
                      model: transactions[index],
                    ),
                    if (index != transactions.length - 1)
                      const Divider(height: 1),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
