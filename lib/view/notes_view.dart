import 'package:flutter/material.dart';
import 'package:note/view/notes_body.dart';

class Notes_View extends StatelessWidget {
  const Notes_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: const Notes_Body(),
    );
  }
}
