import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DeactivateCardItem extends StatelessWidget {
  const DeactivateCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Switch(
          value: true,
          onChanged: (value) {},
          activeColor: const Color(0xFF197BBD),
        ),
        const SizedBox(height: 4),
        FittedBox(
          fit: .scaleDown,
          child: Text(
            'Deactivate card',
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xFFAEAEAE)),
          ),
        ),
      ],
    );
  }
}
