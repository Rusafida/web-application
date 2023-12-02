import 'package:flutter/material.dart';
import 'package:webapplication/dashboard/profile/mobile_profile.dart';
import '../widget/chart/line_chart.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_drawer.dart';
import '../widget/custom_searchbar_widget.dart';
import '../widget/listview_containers/mobile_listview_container.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onClick: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MobileProfile()));
        },
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          SearchWidget(),
          const MobileListView(),
         // ChartLine()
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
