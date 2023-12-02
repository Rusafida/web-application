import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webapplication/dashboard/profile/edit/tablet_profile_edit.dart';
import 'package:webapplication/dashboard/profile/widget/details_container.dart';
import 'package:webapplication/dashboard/profile/widget/listtile_container.dart';
import 'package:webapplication/dashboard/profile/widget/profile_text.dart';

import '../../constants/theme/theme_provider.dart';

class TabletProfile extends StatefulWidget {
  const TabletProfile({super.key});

  @override
  State<TabletProfile> createState() => _TabletProfile();
}

class _TabletProfile extends State<TabletProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 64, 155),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text('MyProfile'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Consumer<ThemeProvider>(
              builder:
                  (BuildContext context, ThemeProvider value, Widget? child) {
                return GestureDetector(
                  onTap: () {
                    context.read<ThemeProvider>().toggleButton();
                  },
                  child: Icon(
                    Icons.mode_night,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 60,
              child: Image.asset('assets/images/profile.png'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              width: 120,
              margin: const EdgeInsets.only(left: 20),
              child: TextFormField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: 'Rusafida',
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const EditTabletProfile()));
            },
            child: const Text(
              'Edit health details',
              style: TextStyle(
                color: Color.fromARGB(255, 11, 64, 155),
              ),
            ),
          ),
          const DetailsContainer(),
          const SizedBox(height: 10),
          const ProfileBigText(),
          const ListtileContainer(
            title: 'Yoga',
            subtitle: 'Today 5pm - 6pm',
            trailingIcon: Icons.more_horiz,
          ),
          const ListtileContainer(
            title: 'Zumba',
            subtitle: 'Monday 4pm - 6pm',
            trailingIcon: Icons.more_horiz,
          ),
          const ListtileContainer(
            title: 'Yoga',
            subtitle: 'Today 5pm - 6pm',
            trailingIcon: Icons.more_horiz,
          )
        ],
      ),
    );
  }
}
