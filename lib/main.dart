import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constants.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(NotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const Note_App());
}

class Note_App extends StatelessWidget {
  const Note_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
          theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
          debugShowCheckedModeBanner: false,
          home: const Notes_View()),
    );
  }
}
