import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/customs/custom_text_styles.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/edit_note_view.dart';

class Note_item extends StatelessWidget {
  const Note_item({super.key, required this.color, required this.note});
  final Color color;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding:
            const EdgeInsets.only(bottom: 24, top: 24, left: 24, right: 16),
        margin: const EdgeInsets.only(top: 10),
        //width: 365,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(right: 0),
              title: Text(
                note.title,
                style: CustomTextStyles.Title_Style,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.content,
                  style: CustomTextStyles.SubTitle_Style,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    // it's very easy to delete note because of HiveObject in the NoteModel which enable you some thing like that
                    note.delete();
                    // to refresh or rebuild the notes list after deleting
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 26,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                note.date,
                style: CustomTextStyles.date_Style,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
