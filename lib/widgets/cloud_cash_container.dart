import 'package:financial_dashboard/models/card_model.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/card_data.dart';
import 'package:flutter/material.dart';

class CloudCashContainer extends StatelessWidget {
  const CloudCashContainer({super.key});
static const List<CardModel> cardData = [
  CardModel(title: 'Card holder', subTitle: 'Mike Smith'),
  CardModel(title: 'Expire date', subTitle: '06/21'),
];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin:  Alignment.centerLeft,
            colors:const [
          Color(0xFF197BBD),
          Color(0xFF3391D0),
        ]),
        borderRadius: BorderRadius.circular(26),
        color: const Color(0xFFF5F5F5),

      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
         FittedBox(
             fit: BoxFit.scaleDown,
             child: Text('Cloud cash',style: AppStyles.styleBold18(context).copyWith(color: Colors.white))),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('PREMIUM ACCOUNT',style: AppStyles.styleBold14(context).copyWith(
            color: Color(0xFFAEAEAE)
          ),),
        ),
          SizedBox(
            height: 40,
          ),

          ////
          Center(child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('5789 * * * *  * * * * 2847',style: AppStyles.styleMedium20(context).copyWith(color: Colors.white),))),
          SizedBox(height: 40,),
          Row(
            mainAxisSize: .min
            ,
            children:List.generate(cardData.length * 2 - 1, (index) {
              if (index.isEven) {
                final itemIndex = index ~/ 2;
                return CardData(
                  title: cardData[itemIndex].title,
                  subTitle: cardData[itemIndex].subTitle,
                );
              } else {
                return const SizedBox(width: 45);
              }
            }
          ),),
        ],
      ),
    );
  }
}

