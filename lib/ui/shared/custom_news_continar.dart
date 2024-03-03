import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomNewsContinar extends StatelessWidget {
  final String img;
  final String title;
  const CustomNewsContinar({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1),
      height: screenHeight(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withOpacity(1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: AppColors.whiteColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: screenWidth(35)),
            child: Image.network(
              img,
              height: screenHeight(5.6),
              width: screenWidth(3.1),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: title,
                  maxLine: 2,
                  styleType: TextStyleType.SUBTITLE,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: screenHeight(100)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/pngs/Group.png',
                              height: screenHeight(30),
                            ),
                            CustomText(text: '300'),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/pngs/Group.png',
                              height: screenHeight(30),
                            ),
                            CustomText(text: '300'),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


    //  top: screenHeight(20),
    //     start: screenWidth(20),
    //     end: screenWidth(20),