import 'package:flutter/material.dart';

class ListModel {
  Icon icon;
  String title;
  String subtitle;

  ListModel({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

List<ListModel> listViewItem = [
  ListModel(
    icon:  Icon(
      Icons.energy_savings_leaf,
      color: Colors.amber[300],
      size: 25,
    ),
    title: '310',
    subtitle: 'Calories burned',
  ),
  ListModel(
    icon: const Icon(
      Icons.do_not_step_sharp,
      color: Color.fromARGB(255, 136, 208, 137),
      size: 25,
    ),
    title: '10,000',
    subtitle: 'Steps',
  ),
  ListModel(
    icon: const Icon(
      Icons.social_distance_outlined,
      color: Color.fromARGB(255, 210, 150, 170),
      size: 25,
    ),
    title: '65km',
    subtitle: 'Distance',
  ),
  ListModel(
    icon: const Icon(
      Icons.do_not_step_sharp,
      color: Color.fromARGB(255, 189, 201, 222),
      size: 25,
    ),
    title: '8h38m',
    subtitle: 'Sleep',
  ),
];
