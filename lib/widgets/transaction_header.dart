import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class TransactionHeaderRow extends StatelessWidget {
  const TransactionHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 12),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'Receiver',
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFAEAEAE)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Type',
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFAEAEAE)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Date',
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFAEAEAE)),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Amount',
              textAlign: TextAlign.end,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFAEAEAE)),
            ),
          ),
        ],
      ),
    );
  }
}
