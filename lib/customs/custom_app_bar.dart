import 'package:flutter/material.dart';
import 'package:note/customs/custom_search.dart';

class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        CustomIcon(
          icon: icon,
        )
      ],
    );
  }
}
