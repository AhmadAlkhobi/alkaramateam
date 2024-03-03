import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';


class NavItem extends StatelessWidget {
  final String icon;
  final bool? isSelected;
  final Function onTap;
  final String title;

  const NavItem({
    super.key,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: screenWidth(60)),
        child: Column(
          children: [
            Image.asset('assets/images/pngs/${icon}.png',
                width: screenWidth(16),
                color:
                    isSelected! ? AppColors.orangeColor : AppColors.whiteColor),
            CustomText(
              text: title,
              fontWeight: FontWeight.normal,
              styleType: TextStyleType.SMALL,
              // textColor: AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
