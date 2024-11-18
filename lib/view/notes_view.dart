import 'package:flutter/material.dart';
import 'package:note/view/notes_body.dart';
import 'package:note/view/widgets/add_note_bottom_sheet.dart';

class Notes_View extends StatelessWidget {
  const Notes_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Add_Note_Bottom_Sheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: const Notes_Body(),
    );
  }
}
