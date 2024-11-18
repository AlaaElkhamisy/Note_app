import 'package:flutter/material.dart';
import 'package:note/customs/app_colors.dart';
import 'package:note/view/note_item.dart';

class Notes_ListView extends StatelessWidget {
  const Notes_ListView({super.key});
  final int itemCount = 100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          Color itemColor =
              AppColors.colorList[index % AppColors.colorList.length];
          return Note_item(
            color: itemColor,
          );
        },
      ),
    );
  }
}
