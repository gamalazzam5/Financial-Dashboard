import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/profile_section.dart';
import 'package:flutter/material.dart';

class WeeklySumUpHeader extends StatelessWidget {
  const WeeklySumUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 600;
    return  ListTile(
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.titleHeight,
      title: Text('Weekly Sum-UP',style: AppStyles.styleSemiBold24(context).copyWith(fontSize:isMobile?24: 36),),
      subtitle: Text('Get summary of your weekly online transactions here.',maxLines: 2,style: AppStyles.styleRegular16(context).copyWith(color: const Color(0xFFAEAEAE),),),
      trailing: const ProfileSection()
    );
  }
}
