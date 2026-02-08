import 'package:financial_dashboard/utils/size_config.dart';
import 'package:financial_dashboard/widgets/transaction_row_desktop.dart';
import 'package:financial_dashboard/widgets/transaction_row_mobile.dart';
import 'package:flutter/material.dart';

import '../models/transaction_model.dart';

class TransactionRowItem extends StatelessWidget {
  const TransactionRowItem({super.key, required this.model});

  final TransactionModel model;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width < SizeConfig.tablet) {
      return TransactionRowMobile(model: model);
    } else {
      return TransactionRowDesktop(model: model);
    }
  }
}
