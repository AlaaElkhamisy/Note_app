import 'package:flutter/material.dart';
import 'package:note/customs/custom_text_styles.dart';

class Note_item extends StatelessWidget {
  const Note_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, right: 10),
      margin: const EdgeInsets.only(top: 10),
      width: 365,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: CustomTextStyles.Title_Style,
            ),
            subtitle: Text(
              "Build your Career with Tharwat Sami",
              style: CustomTextStyles.SubTitle_Style,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 35,
                  color: Colors.black,
                )),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "May21,2022",
              style: CustomTextStyles.date_Style,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.amber[100], borderRadius: BorderRadius.circular(20)),
    );
  }
}
