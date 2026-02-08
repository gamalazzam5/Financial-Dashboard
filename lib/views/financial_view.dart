import 'package:financial_dashboard/utils/size_config.dart';
import 'package:financial_dashboard/widgets/adaptive_layout.dart';
import 'package:financial_dashboard/widgets/custom_drawer.dart';
import 'package:financial_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:financial_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_desktop_layout.dart';

class FinancialView extends StatefulWidget {
  const FinancialView({super.key});

  @override
  State<FinancialView> createState() => _FinancialViewState();
}

class _FinancialViewState extends State<FinancialView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      appBar: width< SizeConfig.tablet ? AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          scaffoldKey.currentState!.openDrawer();
        }, icon: Icon(Icons.menu)),
      ) : null,
      drawer:  width< SizeConfig.tablet ? CustomDrawer():null ,
      backgroundColor: Colors.white,
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
