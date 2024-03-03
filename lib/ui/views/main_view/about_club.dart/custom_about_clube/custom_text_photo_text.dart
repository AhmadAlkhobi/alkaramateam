import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomTextPhotoText extends StatelessWidget {
  final String icon;
  final String title;
  final String body;
  final int index;
  const CustomTextPhotoText({
    super.key,
    required this.icon,
    required this.title,
    required this.body,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(
          horizontal: screenWidth(30), vertical: screenWidth(36)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: screenWidth(17.5),
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            ),
          ),
          Image.asset(
            'assets/images/pngs/${icon}.png',
            width: screenWidth(1),
            height: screenWidth(1.6),
          ),
          Text(
            body,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: screenWidth(25),
            ),
          ),
        ],
      ),
    );
  }
}
