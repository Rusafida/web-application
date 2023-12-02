import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webapplication/dashboard/widget/custom_drawer.dart';
import 'package:webapplication/dashboard/widget/custom_searchbar_widget.dart';
import 'package:webapplication/dashboard/widget/listview_containers/desktop_listview_container.dart';
import '../../constants/theme/theme_provider.dart';
import '../profile/desktop_profile.dart';
import '../widget/chart/line_chart.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Consumer<ThemeProvider>(
              builder: (BuildContext context ,ThemeProvider value, Widget? child){
                return GestureDetector(
                  onTap: (){
                    context.read<ThemeProvider>().toggleButton();
                  },
                  child: Icon(Icons.mode_night,
                  color: Theme.of(context).colorScheme.secondary,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          const CustomDrawer(),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SearchWidget(),
                const DesktopListview(),
                const SizedBox(height: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 18, 60, 131),
                    ),
                    child: const ChartLine(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: const [
                DesktopProfile(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
