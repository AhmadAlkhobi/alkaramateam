import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomPhotoTitle extends StatelessWidget {
  final double mainWidth;
  final String text;
  final String images;
  final bool isBool;

  const CustomPhotoTitle(
      {super.key,
      required this.text,
      required this.images,
      required this.mainWidth,
      this.isBool = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: screenWidth(20)),
      child: Container(
        width: screenWidth(mainWidth),
        child: Column(
          children: [
            Image.asset('assets/images/pngs/${images}.png'),
            Container(
              padding: EdgeInsetsDirectional.only(
                top: isBool ? 0 : screenWidth(25),
                start: isBool ? 0 : screenWidth(30),
              ),
              height: screenWidth(5),
              width: screenWidth(1),
              decoration: BoxDecoration(
                  color: AppColors.barColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Text(
                text.toString(),
                textAlign: isBool ? TextAlign.center : TextAlign.start,
                style: TextStyle(
                    fontSize: isBool ? screenWidth(24) : screenWidth(14),
                    color: AppColors.whiteColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
