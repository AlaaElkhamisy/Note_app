import 'package:flutter/material.dart';
import 'package:note/customs/custom_button.dart';
import 'package:note/customs/custom_text_field.dart';

class Add_Note_Bottom_Sheet extends StatelessWidget {
  const Add_Note_Bottom_Sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}