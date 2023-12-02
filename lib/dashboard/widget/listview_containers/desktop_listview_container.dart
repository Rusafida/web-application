import 'package:flutter/material.dart';
import '../../../model/listview_model.dart';

class DesktopListview extends StatelessWidget {
  const DesktopListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listViewItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 119, 149, 201),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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