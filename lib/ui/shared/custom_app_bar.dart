import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? showBool;
  const CustomAppBar({
    super.key,
    this.title,
    this.showBool = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.barColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/pngs/logo.png',
            height: screenWidth(5),
          ),
          CustomText(
            text: title ?? '',
            styleType: TextStyleType.TITLE,
            textColor: AppColors.whiteColor,
          ),
          Spacer(),
          if (showBool!)
            Padding(
              padding: EdgeInsetsDirectional.only(end: screenWidth(20)),
              child: Image.asset(
                'assets/images/pngs/type.png',
                width: screenWidth(8),
                height: screenWidth(7),
              ),
            ),
        ],
      ),
    );
  }
}
