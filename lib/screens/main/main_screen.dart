import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web/controllers/menu_app_controller.dart';
import 'package:flutter_dashboard_web/responsive.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/dashboard_screen.dart';
import 'package:flutter_dashboard_web/screens/main/components/side_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isDesktop(context))
          const Expanded(
            child: SideMenu(),
          ),
          const Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      )),
    );
  }
}
