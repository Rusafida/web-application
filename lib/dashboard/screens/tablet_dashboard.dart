import 'package:flutter/material.dart';
import 'package:webapplication/dashboard/profile/tablet_profile.dart';
import 'package:webapplication/dashboard/widget/custom_appbar.dart';
import 'package:webapplication/dashboard/widget/custom_drawer.dart';
import 'package:webapplication/dashboard/widget/custom_searchbar_widget.dart';
import 'package:webapplication/dashboard/widget/listview_containers/tablet_listview_container.dart';
import '../widget/chart/line_chart.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onClick: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const TabletProfile()));
        },
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          SearchWidget(),
          const TabListview(),
            const SizedBox(height: 10),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
               color: const Color.fromARGB(255, 18, 60, 131),
              ),
              child: const ChartLine(),
            ),
          ),
        ],
      ),
    );
  }
}
