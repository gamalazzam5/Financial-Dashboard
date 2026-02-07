import 'dart:ui';

class BalanceItemModel {
  final String title;
  final String subTitle;
  final Color color;
  final bool isSwitch;

  const BalanceItemModel({
    required this.title,
    required this.subTitle,
    required this.color,
    this.isSwitch = false,
  });
}
