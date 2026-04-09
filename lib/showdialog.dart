import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_robotech/app_colors.dart';
import 'package:task_robotech/customtxt.dart';

void showdialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 330,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customText(
                      text: '1.3',
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                      fontColor: AppColors.red,
                    ),
                    Gap(9),
                    Column(
                      children: [
                        customText(
                          text: 'BMI',
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                        ),
                        customText(
                          text: 'Underweight',
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          fontColor: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.red,
                  thickness: 2,
                  height: 20,
                  indent: 20,
                  endIndent: 20,  
                ),
                Column(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                       customText(
                          text: 'Calories',
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                        ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customText(
                      text: '1750',
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                      fontColor: AppColors.red,
                    ),
                          Gap(9),
                         customText(
                          text: 'Kcal',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          //fontColor: Colors.green,
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    //myfun();
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Colse",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
