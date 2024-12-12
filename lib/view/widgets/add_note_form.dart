import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/customs/app_colors.dart';
import 'package:note/customs/custom_button.dart';
import 'package:note/customs/custom_text_field.dart';
import 'package:note/models/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  // used to return error message when the user enter an erro input or epmty
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hint: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var noteModel = NoteModel(
                        title: title!,
                        content: content!,
                        date: DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY.toString(),
                        color: AppColors.color1.value);

                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
