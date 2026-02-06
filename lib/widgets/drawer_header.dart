import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        Assets.imagesCloudCash,
        height: 28,
        fit: BoxFit.contain,
      ),

      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text('cloudCash', style: AppStyles.styleBold18(context)),
      ),
    );
  }
}
