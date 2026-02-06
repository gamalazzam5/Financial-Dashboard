import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../generated/assets.dart';

class LowerDrawerSection extends StatelessWidget {
  const LowerDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .center,
        children: [
          Expanded(child: SizedBox(height: 20)),

          SvgPicture.asset(Assets.resourceImagesSpaceCloud),
          const SizedBox(height: 8),
          Text(
            'Give your money\n awesome space in cloud',
            textAlign: TextAlign.center,
            style: AppStyles.styleRegular12(
              context,
            ).copyWith(color: const Color(0xFF404040)),
          ),
          SizedBox(height: 8),
          ElevatedButton(

            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              backgroundColor: const Color(0xFFFFC145),
            ),
            onPressed: () {},
            child: FittedBox(
              fit:  BoxFit.scaleDown ,
              child: Row(
                mainAxisAlignment: .center,
                mainAxisSize: .min,
                children: [
                  Text(
                    'Upgrade to premium',
                    style: AppStyles.styleBold14(context),
                  ),
                  SizedBox(width: 4,),
                  Icon(Icons.arrow_upward,color: Colors.black,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
