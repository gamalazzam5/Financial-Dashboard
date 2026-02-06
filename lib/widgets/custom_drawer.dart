import 'package:financial_dashboard/widgets/drawer_header.dart';
import 'package:financial_dashboard/widgets/drawer_list_view.dart';
import 'package:financial_dashboard/widgets/lower_drawer_section.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
      width: width*.16,
     color: const Color(0xFFF8F8F8),
      child: CustomScrollView(
        slivers: [
SliverToBoxAdapter(
  child: CustomDrawerHeader(),
),
          const SliverToBoxAdapter(
          child: SizedBox(height: 60,),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: LowerDrawerSection(),
          )
        ],
      ),
    );
  }
}
