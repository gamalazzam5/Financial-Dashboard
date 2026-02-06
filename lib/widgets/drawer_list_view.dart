import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: Assets.imagesOverview, text: 'OverView'),
    DrawerItemModel(image: Assets.imagesTransactions, text: 'Transactions'),
    DrawerItemModel(image: Assets.imagesCards, text: 'Card'),
    DrawerItemModel(image: Assets.imagesInvoices, text: 'Invoices'),
    DrawerItemModel(image: Assets.imagesGoals, text: 'Goals'),
    DrawerItemModel(image: Assets.imagesSettings, text: 'Settings'),
  ];
  int active = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (index == active) {
            return;
          }
          setState(() {
            active = index;
          });
        },
        child: DrawerItem(
          drawerItemModel: drawerItems[index],
          isActive: active == index,
        ),
      ),
    );
  }
}
