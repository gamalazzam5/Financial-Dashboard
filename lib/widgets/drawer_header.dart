import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        Assets.resourceImagesCloudCash,
        height: 28,
        fit: BoxFit.contain,
      ),

      title: Text('cloudCash', style: AppStyles.styleBold18(context)),
    );
  }
}
