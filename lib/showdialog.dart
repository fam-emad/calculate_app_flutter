import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_robotech/app_colors.dart';
import 'package:task_robotech/customtxt.dart';

void showdialog(BuildContext context, double value, int age, int numWeight, int selectedIndex) {
 
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
                      text: bmi(numWeight,value).toStringAsFixed(1),
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
                          text: getStatus(bmi(numWeight, value)),
                          fontColor:getColor(bmi(numWeight, value)),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
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
                      text: calculateBMR(value,age,numWeight,selectedIndex).toStringAsFixed(0),
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


double bmi(int weightKg, double heightCm) {
  double heightMeter = heightCm / 100;
  double value = weightKg / (heightMeter * heightMeter);
  return double.parse(value.toStringAsFixed(2));
}

double calculateBMR(
   double value, int age, int numWeight, int selectedIndex
) {
  if (selectedIndex == 0) {
    // Male
    return (10 * numWeight) +
           (6.25 * value) -
           (5 * age) + 5;
  } else {
    // Female
    return (10 * numWeight) +
           (6.25 * value) -
           (5 * age) - 161;
  }
}

// الفانكشن دي هنحطها جوه الكلاس أو براه
String getStatus(double bmi) {
                   
  if (bmi >= 16 && bmi < 18.5) return 'Underweight';
  if (bmi >= 18.5 && bmi < 25) return 'Normal';
  if (bmi >= 25 && bmi <= 40) return 'Overweight';
  return 'Unknown';
}

Color getColor(double bmi) {
  if (bmi >= 16 && bmi < 18.5) return Colors.blue;
  if (bmi >= 18.5 && bmi <= 40) return Colors.red; // حسب طلبك الأخضر للـ Normal و Overweight
  return Colors.green;
}