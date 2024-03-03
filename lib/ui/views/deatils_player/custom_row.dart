import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomRow extends StatelessWidget {
  final String text;
  final String text2;
  final bool? isunderlin;

  const CustomRow(
      {super.key,
      required this.text,
      required this.text2,
      this.isunderlin = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isunderlin!
            ? Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: screenWidth(50), color: AppColors.whiteColor),
              ))
            : CustomText(
                text: '_',
                styleType: TextStyleType.TITLE,
                textColor: AppColors.whiteColor),
        SizedBox(
          width: screenWidth(25),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(end: screenWidth(100)),
          child: CustomText(
            text: "${text} ${text2} ",
            textColor: AppColors.whiteColor,
            fontSize: screenWidth(30),
            styleType: TextStyleType.SUBTITLE,
          ),
        ),
      ],
    );
  }
}
