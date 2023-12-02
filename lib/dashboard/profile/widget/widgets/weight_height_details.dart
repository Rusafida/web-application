

import 'package:flutter/material.dart';

class WeightHeightDetails extends StatelessWidget {
  const WeightHeightDetails({super.key, required this.text, required this.numberText});

  
  final String text;
  final String numberText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text,
          style:const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          numberText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}