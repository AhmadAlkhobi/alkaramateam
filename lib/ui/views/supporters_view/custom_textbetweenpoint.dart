import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class textbetweenpoint extends StatelessWidget {
  final String? text;
  const textbetweenpoint({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: screenWidth(15),
            width: screenWidth(30),
            decoration: BoxDecoration(
              color: AppColors.orangeColor,
              shape: BoxShape.circle,
            )),
        CustomText(
          text: text!,
          textColor: AppColors.whitgreColor,
          styleType: TextStyleType.TITLE,
        ),
        Container(
            height: screenWidth(15),
            width: screenWidth(30),
            decoration: BoxDecoration(
              color: AppColors.orangeColor,
              shape: BoxShape.circle,
            )),
      ],
    );
  }
}
