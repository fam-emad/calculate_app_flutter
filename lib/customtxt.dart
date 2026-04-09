import 'package:flutter/material.dart';
import 'package:task_robotech/app_colors.dart';
 
class customText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? fontColor;
    final FontWeight? fontWeight;
  final bool isBlack;
  const customText({
    super.key,
    required this.text,
    required this.fontSize,
    this.isBlack = true,
    this.fontColor, this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
         // fontFamily: 'inter',
          fontWeight:fontWeight ??FontWeight.w900,
          fontSize: fontSize,
          color: fontColor ?? AppColors.white,
        ),
      ),
    );
  }
}
