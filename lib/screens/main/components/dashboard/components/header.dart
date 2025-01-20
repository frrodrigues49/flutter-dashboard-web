import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/profile_card.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/search_field.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(flex: 2),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}