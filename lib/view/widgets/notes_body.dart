import 'package:flutter/material.dart';
import 'package:note/customs/custom_app_bar.dart';
import 'package:note/view/widgets/note_list_view.dart';

class Notes_Body extends StatelessWidget {
  const Notes_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          children: [
            Custom_App_Bar(
              title: "Notes",
              icon: Icons.search,
            ),
            Expanded(child: Notes_ListView())
          ],
        ),
      ),
    );
  }
}