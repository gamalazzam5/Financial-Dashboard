import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AddNewTransactionItem extends StatelessWidget {
  const AddNewTransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: const Color(0xFFFFC145),
          child: const Icon(Icons.add, color: Color(0xFF404040)),
        ),
        Text(
          'Add New',
          style: AppStyles.styleRegular14(context)
              .copyWith(color: const Color(0xFF404040)),
        ),
      ],
    );
  }
}
