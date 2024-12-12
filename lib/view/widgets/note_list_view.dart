import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/customs/app_colors.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/widgets/note_item.dart';

class Notes_ListView extends StatelessWidget {
  const Notes_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int index) {
              Color itemColor =
                  AppColors.colorList[index % AppColors.colorList.length];
              return Note_item(
                note: notes[index],
                color: itemColor,
              );
            },
          ),
        );
      },
    );
  }
}
