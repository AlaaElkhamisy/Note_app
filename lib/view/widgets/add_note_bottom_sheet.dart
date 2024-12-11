import 'package:flutter/material.dart';
import 'package:note/view/widgets/add_note_form.dart';

class Add_Note_Bottom_Sheet extends StatelessWidget {
  const Add_Note_Bottom_Sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
