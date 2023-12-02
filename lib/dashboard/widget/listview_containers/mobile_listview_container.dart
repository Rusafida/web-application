import 'package:flutter/material.dart';

import '../../../model/listview_model.dart';
class MobileListView extends StatelessWidget {
  const MobileListView({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listViewItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 119, 149, 201)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: listViewItem[index].icon,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    listViewItem[index].title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  Text(
                    listViewItem[index].subtitle,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}