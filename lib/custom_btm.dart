import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_robotech/app_colors.dart';
import 'package:task_robotech/customtxt.dart';

class CustomBtm extends StatefulWidget {
  const CustomBtm({
    super.key,
    required this.text,
    this.onTap,
    this.ccolor,
    this.colorfont,
    required this.fontSize,
    required this.isimage,
    this.iconsize,
    this.iconcolor,
    this.icon,
    this.height,
    this.width,
    this.radius,
    this.value,
    this.onChanged,
    required this.isslider, this.text2, this.fontWeight, required this.index, required this.selectedIndex,
  });
  final String text;
   final String? text2;
  final Function()? onTap;
  final Color? ccolor;
  final Color? colorfont;
  final double? iconsize;
  final Color? iconcolor;
  final IconData? icon;
  final double fontSize;
  final double? height;
  final double? width;
  final double? radius;
  final bool isslider;
  final bool isimage;
  final double? value;
  final ValueChanged<double>? onChanged;
final FontWeight? fontWeight;
 final int index;
  final int selectedIndex;
  @override
  State<CustomBtm> createState() => _CustomBtmState();
}

class _CustomBtmState extends State<CustomBtm> {
  @override
  Widget build(BuildContext context) {
      bool isSelected =widget. index ==widget.selectedIndex;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.width ?? 250,
        height: widget.height ?? 97,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),

        decoration: BoxDecoration(
          color: isSelected ? AppColors.red: widget.ccolor,
          borderRadius: BorderRadius.circular(widget.radius ?? 20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.isimage
                ? Icon(
                    widget.icon ?? null,
                    size: widget.iconsize ?? 50,
                    color: widget.iconcolor ?? AppColors.white,
                  )
                : SizedBox.shrink(),
            Gap(8),
            customText(text: widget.text, fontSize: widget.fontSize,fontWeight:widget.fontWeight),
            widget.isslider
                ?
            RichText(
              text: TextSpan(
                text: widget.text2,
                style: TextStyle(color: AppColors.white, fontSize: 40,fontWeight: FontWeight.w900 ),
                children: [
                  TextSpan(
                    text: 'cm',
                    style: TextStyle(
                      color: widget.colorfont,
                      fontSize: widget.fontSize, // حجم مختلف
                      fontWeight:widget.fontWeight,
                    ),
                  ),
                ],
              ),
            ) : SizedBox.shrink(),
            widget.isslider
                ? Slider(
                    value: widget.value ?? 10,
                    onChanged: widget.onChanged,
                    min: 0,
                    max: 240,
                    activeColor: AppColors.primaryColor,
                    inactiveColor: AppColors.white,
                    thumbColor: AppColors.primaryColor,
                    // label: widget.value.toString(),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
