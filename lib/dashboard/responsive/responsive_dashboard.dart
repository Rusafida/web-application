
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../screens/desktop_dashboard.dart';
import '../screens/mobile_dashboard.dart';
import '../screens/tablet_dashboard.dart';

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints){
       if (Constraints.maxWidth < 600) {
        return const MobileDashboard();
      } else if (Constraints.maxWidth < 1200) {
        return const TabletDashboard();
      } else {
        return  const DesktopDashboard();
      }
    });
  }
}