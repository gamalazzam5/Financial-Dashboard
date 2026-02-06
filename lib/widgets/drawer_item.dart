import 'package:financial_dashboard/models/drawer_item_model.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
        colorFilter: isActive
            ? ColorFilter.mode(const Color(0xFF197BBD), BlendMode.srcIn)
            : ColorFilter.mode(const Color(0xFFC7C7C7), BlendMode.srcIn),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.text,
          style: AppStyles.styleBold14(context).copyWith(
            color: isActive ? const Color(0xFF197BBD) : const Color(0xFFC7C7C7),
          ),
        ),
      ),
    );
  }
}
