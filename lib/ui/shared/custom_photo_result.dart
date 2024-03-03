import 'package:flutter/cupertino.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomPhotoResult extends StatelessWidget {
  final String icon;
  const CustomPhotoResult({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: screenWidth(20)),
        margin: EdgeInsets.all(screenWidth(20)),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/pngs/${icon}.png',
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: screenWidth(180),
                  ),
                  Text('الجمعة، 2023/05/26',
                      style: TextStyle(
                          fontSize: screenWidth(22),
                          color: AppColors.whiteColor)),
                  Text("12 : 12 عصراً",
                      style: TextStyle(
                          fontSize: screenWidth(26),
                          color: AppColors.whiteColor))
                ],
              ),
            ),
            Positioned(
              top: screenWidth(8),
              right: screenWidth(18),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/pngs/logo.png'),
                      Text(
                        'الكرامة',
                        style: TextStyle(
                            fontSize: screenWidth(14),
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth(30)),
                    child: Column(
                      children: [
                        Text(
                          'ملعب خالد بن الوليد',
                          style: TextStyle(
                            fontSize: screenWidth(22),
                          ),
                        ),
                        Text(
                          '0:1',
                          style: TextStyle(
                              fontSize: screenWidth(9),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/pngs/logo.png'),
                      Text(
                        ' الكرامة',
                        style: TextStyle(
                            fontSize: screenWidth(14),
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: screenWidth(2.7)),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'الجولة',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth(22),
                          color: AppColors.whiteColor),
                    ),
                    Text(
                      '25',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth(22),
                          color: AppColors.whiteColor),
                    ),
                    SizedBox(
                      height: screenWidth(20),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
