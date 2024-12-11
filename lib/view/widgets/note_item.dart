import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:note/customs/custom_text_styles.dart';
import 'package:note/view/edit_note_view.dart';

class Note_item extends StatelessWidget {
  const Note_item({super.key, required this.color});
  final Color color;
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
              contentPadding: EdgeInsets.only(right: 0),
              title: Text(
                "Flutter Tips",
                style: CustomTextStyles.Title_Style,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  "Build your Career with Tharwat Sami",
                  style: CustomTextStyles.SubTitle_Style,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    size: 26,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "May21,2022",
                style: CustomTextStyles.date_Style,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
