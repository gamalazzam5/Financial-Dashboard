import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/profile_section.dart';
import 'package:flutter/material.dart';

class WeeklySumUpHeader extends StatelessWidget {
  const WeeklySumUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('Weekly Sum-UP',style: AppStyles.styleSemiBold24(context).copyWith(fontSize: 36),),
      subtitle: Text('Get summary of your weekly online transactions here.',style: AppStyles.styleRegular16(context).copyWith(color: const Color(0xFFAEAEAE)),),
      trailing: const ProfileSection()
    );
  }
}
