import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomVideos extends StatelessWidget {
  final String text;
  final String imge;
  final Color color;
  final Color? textColor;

  const CustomVideos(
      {super.key,
      required this.color,
      required this.text,
      required this.imge,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.only(end: screenWidth(20)),
        width: screenWidth(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: screenWidth(80),
                  top: screenWidth(45),
                  bottom: screenWidth(45),
                  end: screenWidth(55)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: [
                    Image.asset(
                      imge,
                      // 'assets/images/pngs/photo_٢٠٢٣-١٢-١٢_٢١-١٧-٥٩ 1.png',
                      height: screenHeight(5),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: screenWidth(40)),
                      child: Image.asset(
                        'assets/images/pngs/you tupe.png',
                        height: screenHeight(5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(top: screenWidth(20)),
                  child: CustomText(
                    text: text,
                    // 'ملخص المباراة والاهداف',
                    styleType: TextStyleType.CUSTOM,
                    textColor: textColor ?? AppColors.whiteColor,
                    maxLine: 3,
                  ),
                )),
          ],
        ));
  }
}
