import 'package:flutter/material.dart';
import 'package:note/view/note_item.dart';

class Notes_ListView extends StatelessWidget {
  const Notes_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return const Note_item();
      },
    );
  }
}
