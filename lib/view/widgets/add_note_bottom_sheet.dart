import 'package:flutter/material.dart';
import 'package:note/customs/custom_text_field.dart';

class Add_Note_Bottom_Sheet extends StatelessWidget {
  const Add_Note_Bottom_Sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomTextField()
        ],
      ),
    );
  }
}
