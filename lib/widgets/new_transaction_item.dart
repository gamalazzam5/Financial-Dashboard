import 'package:financial_dashboard/models/new_transaction_model.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
class NewTransactionItem extends StatelessWidget {
  const NewTransactionItem({super.key, required this.model});
final NewTransactionModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          child: Image.asset(model.image),

        ),
        Text(model.title,style: AppStyles.styleRegular14(context).copyWith(color: const Color(0xFF404040)),)
      ],
    );
  }
}
