import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: const Color.fromARGB(115, 78, 78, 78),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
    );
  }
}
