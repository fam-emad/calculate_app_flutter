import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_robotech/app_colors.dart';
import 'package:task_robotech/customtxt.dart';

class Custombtn2 extends StatefulWidget {
  const Custombtn2({
    super.key,
    required this.text,
    this.onTap,
    this.ccolor,
    this.colorfont,
    

    this.height,
    this.width,
     
    this.onAdd,
    this.onMin,
    required this.number, required this.index, required this.selectedIndex,
  });
  final String text;

  final Function()? onTap;
  final Color? ccolor;
  final Color? colorfont;

   
  final double? height;
  final double? width;
    final int index;
  final int selectedIndex;

  
  final Function()? onAdd;
  final Function()? onMin;
  final int number;

  @override
  State<Custombtn2> createState() => _Custombtn2State();
}

class _Custombtn2State extends State<Custombtn2> {
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
          borderRadius: BorderRadius.circular( 20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customText(text: widget.text, fontSize: 16, fontWeight: FontWeight.w400),
            Gap(5),
            customText(text: widget.number.toString(), fontSize: 40, fontWeight: FontWeight.w900),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 GestureDetector(
                  onTap: widget.onMin,
                  child: CircleAvatar(
                      radius: 26,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(CupertinoIcons.minus, color: Colors.white,),
                  ),
                ),
                
                
                Gap(7),
               GestureDetector(
                  onTap: widget.onAdd,
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(CupertinoIcons.add, color: Colors.white,size: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
