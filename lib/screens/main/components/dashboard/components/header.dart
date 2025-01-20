import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web/controllers/menu_app_controller.dart';
import 'package:flutter_dashboard_web/responsive.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/profile_card.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/search_field.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<MenuAppController>().controlMenu,
            icon: const Icon(Icons.menu),
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}
