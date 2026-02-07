import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../generated/assets.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisSize: .min,
        children: [
          Icon(Icons.email_rounded,color: const Color(0xFFAEAEAE),),
          SizedBox(width: 20,),
          Icon(Icons.notifications,color: const Color(0xFFAEAEAE),),
          SizedBox(width: 20,),
          Row(
            mainAxisSize: .min
            ,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFFFFC145),
                child: SvgPicture.asset(Assets.imagesProfile,fit: BoxFit.fill,),
              ),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Andrew',
                    style: AppStyles.styleSemiBold16(context)
                        .copyWith(color: const Color(0xFF404040)),
                  ),
                  Text(
                    'Admin account',
                    style: AppStyles.styleRegular14(context)
                        .copyWith(color: const Color(0xFFAEAEAE)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
