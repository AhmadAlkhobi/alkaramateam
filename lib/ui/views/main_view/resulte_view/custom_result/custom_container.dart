import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomConrainer extends StatelessWidget {
  final bool isSelect;
  const CustomConrainer({
    super.key,
    this.isSelect = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(6),
      height: screenWidth(6),
      decoration: isSelect
          ? BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.orangeColor,
                  AppColors.whiteColor,
                ],
              ),
              border: Border(
                  bottom: BorderSide(width: 4, color: AppColors.orangeColor)))
          : null,
      child: Text(
        ' السبت     10  نوفمبر',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: screenWidth(24)),
      ),
    );
  }
}
