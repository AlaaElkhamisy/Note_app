import 'package:flutter/material.dart';
import 'package:note/customs/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24, width: 24, child: CircularProgressIndicator())
              : const Text(
                  "Add",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
        ),
      ),
    );
  }
}
