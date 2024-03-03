import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomMang extends StatelessWidget {
  final String imge;
  final String textcarer;
  final String textname;
  const CustomMang(
      {super.key,
      required this.imge,
      required this.textname,
      required this.textcarer});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: screenWidth(1.8),
          height: screenWidth(1),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.vertical(top: Radius.circular(100)),
              color: AppColors.whitgreColor),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              top: screenWidth(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: textname,
                  styleType: TextStyleType.TITLE,
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.blackColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pngs/Frame 122.png'),
                    CustomText(
                      text: textcarer,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth(1),
                      styleType: TextStyleType.SUBTITLE,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: screenWidth(7.5),
          bottom: screenWidth(5.2),
          child: Image.asset(
            imge,
            height: screenHeight(4),
          ),
        ),
      ],
    );
  }
}
