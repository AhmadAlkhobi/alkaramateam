import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomTitleUNderLine extends StatelessWidget {
  final String text;
  final double? textSize;

  final double width;

  final double width1;

  final double width2;

  CustomTitleUNderLine({
    super.key,
    required this.width,
    required this.width1,
    required this.width2,
    required this.text,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: textSize ?? screenWidth(14)),
        ),
        Row(
          children: [
            Container(
              width: width,
              height: screenWidth(80),
              decoration: BoxDecoration(
                  color: AppColors.barColor,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: screenWidth(60),
              ),
              child: Container(
                width: width1,
                height: screenWidth(80),
                decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              width: width2,
              height: screenWidth(80),
              decoration: BoxDecoration(
                  color: AppColors.barColor,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
          ],
        )
      ],
    );
  }
}
