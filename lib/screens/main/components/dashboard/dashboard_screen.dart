import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web/constants.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/header.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/my_fiels.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/recent_files.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiels(),
                      SizedBox(height: defaultPadding),
                      RecentFiles()
                    ],
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
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
