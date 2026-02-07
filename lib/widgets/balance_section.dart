import 'package:flutter/material.dart';
import '../models/balance_model.dart';
import 'balance_item.dart';
import 'deactivate_item_card.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  static const List<BalanceItemModel> items = [
    BalanceItemModel(
      title: r'$ 2850.75',
      subTitle: 'Current balance',
      color: Color(0xFF197BBD),
    ),
    BalanceItemModel(
      title: r'$ 1500.50',
      subTitle: 'Income',
      color: Color(0xFF4CAF50),
    ),
    BalanceItemModel(
      title: r'$ 350.60',
      subTitle: 'Outcome',
      color: Color(0xFFF44336),
    ),
    BalanceItemModel(
      title: '',
      subTitle: '',
      color: Colors.transparent,
      isSwitch: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(items.length, (index) {
        final item = items[index];

        if (item.isSwitch) {
          return const DeactivateCardItem();
        }

        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: BalanceItem(
            title: item.title,
            subTitle: item.subTitle,
            color: item.color,
          ),
        );
      }),
    );
  }
}
