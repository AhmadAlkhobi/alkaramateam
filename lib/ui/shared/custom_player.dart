import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomPlayer extends StatelessWidget {
  final Color color;
  final String textname;
  final String imge;
  final String agetext;
  final String numtext;
  final String longtext;
  final String postext;
  const CustomPlayer(
      {super.key,
      required this.color,
      required this.imge,
      required this.textname,
      required this.agetext,
      required this.numtext,
      required this.longtext,
      required this.postext});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: screenWidth(2.4),
          height: screenWidth(2.99),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyColor.withOpacity(1),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.vertical(top: Radius.circular(44)),
              color: color),
          child: Padding(
            padding: EdgeInsetsDirectional.only(top: screenWidth(7.5)),
            child: Column(
              children: [
                CustomText(
                  text: textname,
                  styleType: TextStyleType.TITLE,
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.whiteColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/pngs/whitelogo.png',
                            height: screenWidth(11)),
                        Positioned(
                          // top: screenWidth(162),
                          left: screenWidth(45),
                          child: Container(
                            width: screenWidth(20),
                            padding: EdgeInsets.all(screenWidth(400)),
                            child: CustomText(
                              text: agetext,
                              styleType: TextStyleType.SMALL,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth(60),
                              textColor: AppColors.blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/images/pngs/whitelogo.png',
                            height: screenWidth(11)),
                        Positioned(
                          // top: screenWidth(10),
                          left: screenWidth(100),
                          child: Container(
                            padding: EdgeInsets.all(screenWidth(400)),
                            width: screenWidth(14),
                            child: CustomText(
                              text: longtext,
                              styleType: TextStyleType.SMALL,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth(34),
                              textColor: AppColors.blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/images/pngs/whitelogo.png',
                            height: screenWidth(11)),
                        Positioned(
                          left: screenWidth(100),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(screenWidth(400)),
                            width: screenWidth(14),
                            child: CustomText(
                              text: numtext,
                              styleType: TextStyleType.SMALL,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth(34),
                              textColor: AppColors.blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/images/pngs/whitelogo.png',
                            height: screenWidth(11)),
                        Positioned(
                          left: screenWidth(100),
                          child: Container(
                            padding: EdgeInsets.all(screenWidth(400)),
                            width: screenWidth(14),
                            child: CustomText(
                              text: postext,
                              styleType: TextStyleType.SMALL,
                              fontSize: screenWidth(34),
                              fontWeight: FontWeight.bold,
                              textColor: AppColors.blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
            left: screenWidth(18),
            bottom: screenWidth(5.2),
            child: Image.asset(
              imge,
              height: screenHeight(4),
            )),
      ],
    );
  }
}
