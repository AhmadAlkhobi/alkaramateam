import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomClubTitle extends StatelessWidget {
  final String? photoUrl;
  final String? label;
  const CustomClubTitle({
    super.key,
    this.photoUrl,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: screenWidth(20)),
      width: screenWidth(2.2),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                      border: Border.all(
                        width: screenWidth(150),
                        color: AppColors.grondeColor,
                      )),
                  height: screenWidth(2.1),
                  width: screenWidth(1.2),
                  child: Image.asset('assets/images/pngs/out2.png')),
              Container(
                padding: EdgeInsets.only(top: screenWidth(2.36)),
                height: screenWidth(1.75),
                child: Image.asset(
                  'assets/images/pngs/out1.png',
                ),
              ),
              Positioned.directional(
                top: screenWidth(2.293),
                start: screenWidth(16),
                textDirection: TextDirection.rtl,
                child: Container(
                  width: screenWidth(3),
                  child: Text(
                    'ابطال الدوري السوري 2008-2007',
                    style: TextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
