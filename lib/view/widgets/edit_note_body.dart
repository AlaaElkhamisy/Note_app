import 'package:flutter/material.dart';
import 'package:note/customs/custom_app_bar.dart';
import 'package:note/customs/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 15,
        ),
        child: Column(
          children: [
            Custom_App_Bar(
              title: "Edit Note",
              icon: Icons.done,
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextField(hint: "Title"),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}
