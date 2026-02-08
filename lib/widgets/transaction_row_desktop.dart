import 'package:flutter/material.dart';
import '../models/transaction_model.dart';
import '../utils/app_styles.dart';

class TransactionRowDesktop extends StatelessWidget {
  const TransactionRowDesktop({super.key, required this.model});

  final TransactionModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(model.icon, size: 18),
                ),
                const SizedBox(width: 12),
                Text(
                  model.receiver,
                  style: AppStyles.styleRegular14(
                    context,
                  ).copyWith(color: Color(0xFF404040)),
                ),
              ],
            ),
          ),

          // Type
          Expanded(
            flex: 2,
            child: Text(
              model.type,
              style: AppStyles.styleRegular14(
                context,
              ).copyWith(color: const Color(0xFFAEAEAE)),
            ),
          ),

          // Date
          Expanded(
            flex: 2,
            child: Text(
              model.date,
              style: AppStyles.styleRegular14(
                context,
              ).copyWith(color: const Color(0xFFAEAEAE)),
            ),
          ),

          // Amount
          Expanded(
            flex: 1,
            child: Text(
              model.amount,
              textAlign: TextAlign.end,
              style: AppStyles.styleSemiBold16(
                context,
              ).copyWith(color: const Color(0xFF404040)),
            ),
          ),
        ],
      ),
    );
  }
}
