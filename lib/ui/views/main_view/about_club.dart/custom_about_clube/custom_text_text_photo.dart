import 'package:flutter/material.dart';

import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomTextTextPhoto extends StatelessWidget {
  final String icon;
  final String? title;
  final String body;
  final double? fontSize;
  final double? width;
  final double? hight;
  final bool showTitle;
  final int index;
  const CustomTextTextPhoto({
    super.key,
    required this.icon,
    this.showTitle = true,
    this.title,
    required this.body,
    this.fontSize,
    this.width,
    this.hight,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: screenWidth(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                showTitle
                    ? Text(
                        title ?? '',
                        style: TextStyle(
                          fontSize: screenWidth(17.5),
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                      )
                    : SizedBox(),
                CustomText(
                  text: body,
                  styleType: TextStyleType.SUBTITLE,
                  maxLine: 20,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/pngs/${icon}.png',
            width: width ?? screenWidth(2.8),
            height: hight ?? screenWidth(1.8),
          ),
        ],
      ),
    );
  }
}
