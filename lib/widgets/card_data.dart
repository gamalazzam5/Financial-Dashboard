import 'package:flutter/material.dart';

import '../utils/app_styles.dart' show AppStyles;

class CardData extends StatelessWidget {
  const CardData({super.key, required this.title, required this.subTitle});
 final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return    Column(
      crossAxisAlignment: .start,
      children: [
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(title,style: AppStyles.styleMedium16(context).copyWith(fontSize: 10,color: Colors.white),)),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(subTitle,style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),)),
      ],

    );
  }
}
