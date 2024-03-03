import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class Customstatistics extends StatelessWidget {
  final String? textname;
  final String? textnum1;
  final String? textnum2;
  final double? value;
  const Customstatistics(
      {super.key, this.textname, this.textnum1, this.textnum2, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(text: textname ?? "", styleType: TextStyleType.SUBTITLE),
        Row(
          children: [
            SizedBox(
              width: screenWidth(40),
            ),
            CustomText(text: textnum1 ?? "", styleType: TextStyleType.SUBTITLE),
            SizedBox(
              width: screenWidth(25),
            ),
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: LinearProgressIndicator(
                  minHeight: 8,
                  value: value,
                  backgroundColor: AppColors.blueColor,
                  color: AppColors.orangeColor,
                ),
              ),
            ),
            SizedBox(
              width: screenWidth(25),
            ),
            CustomText(text: textnum2 ?? "", styleType: TextStyleType.BODY),
            SizedBox(
              width: screenWidth(40),
            ),
          ],
        ),
      ],
    );
  }
}
