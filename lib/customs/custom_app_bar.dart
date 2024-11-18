import 'package:flutter/material.dart';

class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Notes",
          style: TextStyle(fontSize: 25),
        ),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: const Color.fromARGB(115, 78, 78, 78),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.search,
            size: 30,
          ),
        )
      ],
    );
  }
}
