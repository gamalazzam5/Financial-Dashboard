import 'package:financial_dashboard/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

import 'cards_section.dart';

class CardSectionWithTransactionHistory extends StatelessWidget {
  const CardSectionWithTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardsSection(),
        SizedBox(height: 24,),
        TransactionHistorySection()
      ],
    );
  }
}
