import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_robotech/app_colors.dart';
import 'package:task_robotech/custom_btm.dart';
import 'package:task_robotech/custombtn2.dart';
import 'package:task_robotech/showdialog.dart';

class Bmindex extends StatefulWidget {
  const Bmindex({super.key});

  @override
  State<Bmindex> createState() => _BmindexState();
}

class _BmindexState extends State<Bmindex> {
  double value = 0;
  int numWeight = 0;
  int age = 0;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'data',
          style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CustomBtm(
                  text: 'male',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  isimage: true,
                  ccolor: AppColors.secondaryColor,
                  colorfont: AppColors.white,
                  width: 190,
                  height: 220,
                  icon: Icons.male,
                  iconcolor: AppColors.white,
                  iconsize: 110,
                  isslider: false,
                  index: 0,
                  selectedIndex: selectedIndex,

                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
                Gap(15),
                CustomBtm(
                  text: 'female',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,

                  isimage: true,
                  ccolor: AppColors.secondaryColor,
                  colorfont: AppColors.white,
                  width: 190,
                  height: 220,
                  icon: Icons.female,
                  iconcolor: AppColors.white,
                  iconsize: 110,
                  index: 3,
                  selectedIndex: selectedIndex,
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  isslider: false,
                ),
              ],
            ),
            Gap(15),
            CustomBtm(
              text2: '${value.toStringAsFixed(0)} ',

              fontSize: 16,
              fontWeight: FontWeight.w400,
              isimage: false,
              ccolor: AppColors.secondaryColor,
              colorfont: AppColors.white,
              width: 390,
              height: 220,
              icon: Icons.female,
              iconcolor: AppColors.white,
              iconsize: 110,
              index: 1,
              selectedIndex: selectedIndex,

              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              isslider: true,
              value: value,
              onChanged: (v) {
                setState(() {
                  if(selectedIndex==1){
                  value = v;
                  }
                });
              },
              text: 'Height',
            ),
            Gap(15),
            Row(
              children: [
                Custombtn2(
                  text: 'Weight',
                  number: numWeight,
                  width: 190,
                  height: 220,
                  ccolor: AppColors.secondaryColor,
                  colorfont: AppColors.white,

                  index: 6,
                  selectedIndex: selectedIndex,
                  onMin: () {
                    setState(() {
                      if (numWeight > 1&& selectedIndex==6) {
                        numWeight--;
                      }
                    });
                  },
                  onAdd: () {
                    setState(() {
                      if ( selectedIndex==6) {
                      
                      numWeight++;
                      }
                    });
                  },
                  onTap: () {
                    setState(() {
                      selectedIndex = 6;
                    });
                  },
                ),
                Gap(15),
                Custombtn2(
                  text: 'age',
                  number: age,
                  width: 190,
                  height: 220,
                  ccolor: AppColors.secondaryColor,
                  colorfont: AppColors.white,
                  onMin: () {
                    setState(() {
                      if (age > 1&&selectedIndex==5) {
                        age--;
                      }
                    });
                  },
                  onAdd: () {
                    setState(() {
                      if ( selectedIndex==5) {
                      
                      age++;
                      }
                    });
                  },
                  index: 5,
                  selectedIndex: selectedIndex,

                  onTap: () {
                    setState(() {
                      selectedIndex = 5;
                    });
                  },
                ),
              ],
            ),
            Gap(15),
            CustomBtm(
              text: 'calc',
              fontSize: 20,
              isimage: false,
              ccolor: AppColors.red,
              radius: 13,
              colorfont: AppColors.white,
              width: 390,
              height: 80,
              icon: Icons.female,
              iconcolor: AppColors.white,
              iconsize: 110,
              index: 2,
              selectedIndex: selectedIndex,

              onTap: () {
                showdialog(context);
                setState(() {});
                selectedIndex = 2;
              },
              isslider: false,
            ),
          ],
        ),
      ),
    );
  }
}
