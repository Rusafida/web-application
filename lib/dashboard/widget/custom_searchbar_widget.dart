import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
   SearchWidget({super.key});

  final searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: TextField(
        controller: searchTextController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: const TextStyle(color: Color.fromARGB(255, 11, 64, 155)),
          prefixIcon: const Icon(Icons.search,color: Color.fromARGB(255, 11, 64, 155)),
         border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color.fromARGB(255, 11, 64, 155),
              ),
              borderRadius: BorderRadius.circular(20)
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 11, 64, 155)),
            ),
            focusedBorder:const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 11, 64, 155))
            ),
            fillColor: Colors.white,
            filled: true,
    
        ),
      ),
    );
  }
}
