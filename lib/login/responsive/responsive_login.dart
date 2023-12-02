// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../screens/desktop_login_screen.dart';
import '../screens/mobile_login_screen.dart';
import '../screens/tab_login_screen.dart';
class ResponsiveLoginScreens extends StatelessWidget {
  const ResponsiveLoginScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints){
       if (Constraints.maxWidth < 600) {
        return const MobileLoginScreen();
      } else if (Constraints.maxWidth < 1200) {
        return const TabletLoginScreen();
      } else {
        return const DesktopLoginScreen();
      }
    });
  }
}