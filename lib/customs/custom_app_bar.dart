import 'package:flutter/material.dart';
import 'package:note/customs/custom_search.dart';

class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        CustomSearch()
      ],
    );
  }
}
