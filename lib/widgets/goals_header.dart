import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class GoalsHeader extends StatelessWidget {
  const GoalsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Goals',
          style: AppStyles.styleSemiBold20(
            context,
          ).copyWith(color: const Color(0xFF404040)),
        ),
        SizedBox(width: 6,),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: const Color(0xFFFFC145),
            borderRadius: BorderRadius.circular(50)
          ),
          child: Icon(Icons.add,size: 20,),

        )
      ],
    );
  }
}
