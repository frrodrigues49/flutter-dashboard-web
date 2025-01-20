import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web/constants.dart';
import 'package:flutter_dashboard_web/responsive.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/header.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/my_fiels.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/recent_files.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFiels(),
                      const SizedBox(height: defaultPadding),
                      const RecentFiles(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))
                        const StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
