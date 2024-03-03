import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';

class customNamesText extends StatelessWidget {
  final String? Text1;
  final String? Text2;
  const customNamesText({super.key, this.Text1, this.Text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomText(
          text: Text1!,
          textColor: AppColors.whiteColor,
          styleType: TextStyleType.SUBTITLE,
        ),
        CustomText(
          text: Text1!,
          textColor: AppColors.whiteColor,
          styleType: TextStyleType.SUBTITLE,
        ),
      ],
    );
  }
}
