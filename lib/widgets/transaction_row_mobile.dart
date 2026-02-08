import 'package:flutter/material.dart';
import '../models/transaction_model.dart';
import '../utils/app_styles.dart';

class TransactionRowMobile extends StatelessWidget {
  const TransactionRowMobile({super.key, required this.model});

  final TransactionModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.receiver,
                  style: AppStyles.styleRegular14(
                    context,
                  ).copyWith(color: const Color(0xFF404040)),
                ),

                const SizedBox(height: 4),

                Text(
                  '${model.type} • ${model.date}',
                  style: AppStyles.styleRegular14(
                    context,
                  ).copyWith(color: const Color(0xFFAEAEAE)),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),
          Text(
            model.amount,
            style: AppStyles.styleSemiBold16(
              context,
            ).copyWith(color: const Color(0xFF404040)),
          ),
        ],
      ),
    );
  }
}
