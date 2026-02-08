import 'dart:ui';

class   OutComeItemModel {
  final Color progressColor, containerColor;
  final double percent;
  final String subTitle, image;

  const OutComeItemModel({required this.progressColor, required this.containerColor, required this.percent, required this.subTitle, required this.image});
}