
import 'package:flutter/material.dart';

import 'widgets/weight_height_details.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 50,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 11, 64, 155),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          WeightHeightDetails(text: 'Weight', numberText: '45kg'),
           WeightHeightDetails(text: 'Height', numberText: '156'),
            WeightHeightDetails(text: 'Blood Group', numberText: 'A+'),
        ],
      ),
    );
  }
}
