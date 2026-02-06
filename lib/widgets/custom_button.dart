import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.iconData});

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        backgroundColor: const Color(0xFFFFC145),
      ),
      onPressed: () {},
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            Text(text, style: AppStyles.styleBold14(context)),
            SizedBox(width: 4),
            Icon(iconData, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
