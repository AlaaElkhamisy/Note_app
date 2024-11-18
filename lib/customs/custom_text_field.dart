import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:
          InputDecoration(border: buildBorder(), enabledBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white));
}
