import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: Assets.resourceImagesOverview, text: 'OverView'),
    DrawerItemModel(
      image: Assets.resourceImagesTransactions,
      text: 'Transactions',
    ),
    DrawerItemModel(image: Assets.resourceImagesCards, text: 'Card'),
    DrawerItemModel(image: Assets.resourceImagesInvoices, text: 'Invoices'),
    DrawerItemModel(image: Assets.resourceImagesGoals, text: 'Goals'),
    DrawerItemModel(image: Assets.resourceImagesSettings, text: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) =>
          DrawerItem(drawerItemModel: drawerItems[index]),
    );
  }
}
