import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/customs/custom_app_bar.dart';
import 'package:note/view/widgets/note_list_view.dart';

class Notes_Body extends StatefulWidget {
  const Notes_Body({super.key});

  @override
  State<Notes_Body> createState() => _Notes_BodyState();
}

class _Notes_BodyState extends State<Notes_Body> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
