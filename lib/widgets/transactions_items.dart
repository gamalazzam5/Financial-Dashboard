import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/new_transaction_model.dart';
import 'add_new_transaction.dart';
import 'new_transaction_item.dart';

class TransactionsItems extends StatelessWidget {
  const TransactionsItems({super.key});
  static const List<NewTransactionModel> items = [
    NewTransactionModel(image: Assets.imagesPerson1, title: 'Ann'),
    NewTransactionModel(image: Assets.imagesPerson2, title: 'Monica'),
    NewTransactionModel(image: Assets.imagesPerson3, title: 'John'),
    NewTransactionModel(image: Assets.imagesPerson4, title: 'Mike'),
    NewTransactionModel(image: Assets.imagesPerson5, title: 'Mia'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(items.length, (index) {
          if (index < items.length - 1) {
            return Padding(
              padding: EdgeInsets.only(right: 12),
              child: NewTransactionItem(model: items[index]),
            );
          } else {
            return AddNewTransactionItem();
          }
        }),
      ),
    );
  }
}
