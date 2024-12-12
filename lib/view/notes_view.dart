import 'package:flutter/material.dart';
import 'package:note/view/widgets/notes_body.dart';
import 'package:note/view/widgets/add_note_bottom_sheet.dart';

class Notes_View extends StatelessWidget {
  const Notes_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[400],
        onPressed: () {
          showModalBottomSheet(
              // here we allow the bottom sheet to expand to top when it needed
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const Add_Note_Bottom_Sheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const Notes_Body(),
    );
  }
}
