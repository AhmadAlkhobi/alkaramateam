import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomPhotoTextText extends StatelessWidget {
  final String icon;
  final String title;
  final String body;
  final int index;
  const CustomPhotoTextText({
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
          horizontal: screenWidth(30), vertical: screenWidth(50)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/pngs/${icon}.png',
          ),
          Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(30),
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: screenWidth(17),
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
              )),
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
